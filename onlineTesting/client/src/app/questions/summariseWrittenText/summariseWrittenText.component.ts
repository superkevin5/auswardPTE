import {Component, OnInit, AfterContentInit, OnDestroy} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import * as _ from "lodash";
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'summarise-written-text',
  templateUrl: 'summariseWrittenText.component.html',
  styleUrls: ['summariseWrittenText.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class SummariseWrittenTextComponent implements OnInit,AfterContentInit,OnDestroy {
  summariseWrittenTextIds: any = new Array();
  essayRecorded: any = ' ';
  countDown: string = '20:00';
  selectSummariseWrittenText: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  _sub: any = {};


  constructor(private httpService: PteHttpService, private commonService: CommonService) {
    this._sub = Observable.interval(1000).takeUntil(Observable.timer(1000 * 60 * 10 + 2000))
      .subscribe(val => {
        this.countDown = this.secondsToMinutesAndSeconds(60 * 10 - val);
      });
  }

  secondsToMinutesAndSeconds(totalSeconds): string {

    let minutes = Math.floor(totalSeconds / 60);
    let remainder = totalSeconds % 60;
    if (remainder == 0) {
      return `${minutes}:00`;
    } else {
      return remainder < 10 ? `${minutes}:0${remainder}` : `${minutes}:${remainder}`;
    }
  }

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.summariseWrittenTextIds.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.summariseWrittenTextIds.length) {
      this.isLoading = true;
      this.httpService.getWriteEssayById(this.summariseWrittenTextIds[pageNumber - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex = pageNumber - 1;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  saveTextAsFile(data, filename) {

    if (!data) {
      console.error('Console.save: No data');
      return;
    }

    if (!filename) filename = 'console.json';

    var blob = new Blob([data], {type: 'text/plain'}),
      e = document.createEvent('MouseEvents'),
      a = document.createElement('a');
// FOR IE:

    if (window.navigator && window.navigator.msSaveOrOpenBlob) {
      window.navigator.msSaveOrOpenBlob(blob, filename);
    }
    else {
      var e = document.createEvent('MouseEvents'),
        a = document.createElement('a');

      a.download = filename;
      a.href = window.URL.createObjectURL(blob);
      a.dataset.downloadurl = ['text/plain', a.download, a.href].join(':');
      e.initEvent('click', true, false);
      a.dispatchEvent(e);
    }
  }


  download() {
    this.saveTextAsFile(this.essayRecorded, 'pteSummariseText' + (this.currentIndex + 1));
  }


  next() {
    this.toggleAnswer(false);
    if (this.currentIndex < this.summariseWrittenTextIds.length - 1) {
      this.isLoading = true;
      this.httpService.getAllSummariseWrittenTextById(this.summariseWrittenTextIds[this.currentIndex + 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex++;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  previous() {
    this.toggleAnswer(false);
    if (this.currentIndex > 0) {
      this.isLoading = true;
      this.httpService.getAllSummariseWrittenTextById(this.summariseWrittenTextIds[this.currentIndex - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex--;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  toggleAnswer(a: boolean): void {
    this.isAnswer = a;
  }

  shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
      let j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }

  processQuestions(question): void {
    this.essayRecorded ='';
    this.selectSummariseWrittenText = question;
    this.countDown = '10:00';
    this._sub.unsubscribe();
    this._sub = Observable.interval(1000).takeUntil(Observable.timer(1000 * 60 * 10 + 2000))
      .subscribe(val => {
        this.countDown = this.secondsToMinutesAndSeconds(60 * 10 - val);
      });
    window["ga"]('send', {
      hitType: 'event',
      eventCategory: 'summarise-written-text',
      eventAction: `Question:${question.id} visited`
    });
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllSummariseWrittenTextIds().flatMap((data)=> {

      if (data.body && data.body.length > 0) {
        this.summariseWrittenTextIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getAllSummariseWrittenTextById(this.summariseWrittenTextIds[0]);
      }
      else {
        return Observable.of({body: '1'});
      }
    })
      .subscribe(
        data => {
          this.processQuestions(data.body);
        },
        error=> {

        },
        ()=> {
          this.isLoading = false;
        }
      );

  }

  ngOnInit(): void {

  }

  ngOnDestroy() {
    this.countDown = '10:00';
    this._sub.unsubscribe();
  }
}

