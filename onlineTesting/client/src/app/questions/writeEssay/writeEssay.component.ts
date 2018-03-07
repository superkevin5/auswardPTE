import {Component, OnInit, AfterContentInit, OnDestroy} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import * as _ from "lodash";

@Component({
  selector: 'write-essay',
  templateUrl: 'writeEssay.component.html',
  styleUrls: ['writeEssay.component.scss']
})
export class WriteEssayComponent implements OnInit,AfterContentInit,OnDestroy {
  allWriteEssayIds: any = new Array();
  essayRecorded: any = ' ';
  countDown: string = '20:00';
  selectedWriteEssay: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  _sub: any = {};


  constructor(private httpService: PteHttpService, private commonService: CommonService) {
    this._sub = Observable.interval(1000).takeUntil(Observable.timer(1000 * 60 * 20 + 2000))
      .subscribe(val => {
        this.countDown = this.secondsToMinutesAndSeconds(60 * 20 - val);
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
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allWriteEssayIds.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.allWriteEssayIds.length) {
      this.isLoading = true;
      this.httpService.getWriteEssayById(this.allWriteEssayIds[pageNumber - 1]).subscribe(
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
    this.saveTextAsFile(this.essayRecorded, 'pteEssay' + (this.currentIndex + 1));
  }


  next() {
    this.toggleAnswer(false);
    if (this.currentIndex < this.allWriteEssayIds.length - 1) {
      this.isLoading = true;
      this.httpService.getWriteEssayById(this.allWriteEssayIds[this.currentIndex + 1]).subscribe(
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
      this.httpService.getWriteEssayById(this.allWriteEssayIds[this.currentIndex - 1]).subscribe(
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
    this.selectedWriteEssay = question;
    this.countDown = '20:00';
    this._sub.unsubscribe();
    this._sub = Observable.interval(1000).takeUntil(Observable.timer(1000 * 60 * 20 + 2000))
      .subscribe(val => {
        this.countDown = this.secondsToMinutesAndSeconds(60 * 20 - val);
      });
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllWriteEssayIds().flatMap((data)=> {

      if (data.body && data.body.length > 0) {
        this.allWriteEssayIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getWriteEssayById(this.allWriteEssayIds[0]);
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
    this.countDown = '20:00';
    this._sub.unsubscribe();
  }
}

