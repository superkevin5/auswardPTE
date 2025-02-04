import {Component, OnInit, AfterContentInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import * as _ from "lodash";
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'read-fill-in-the-blank',
  templateUrl: 'readFillInBlank.component.html',
  styleUrls: ['readFillInBlank.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class ReadFillInBlankComponent implements OnInit,AfterContentInit {

  allReadFillInTheBlankIds: any = new Array();

  selectedFillInTheBlank: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber:any='';


  constructor(private httpService: PteHttpService,private commonService:CommonService) {


  }

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allReadFillInTheBlankIds.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.allReadFillInTheBlankIds.length) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanksById(this.allReadFillInTheBlankIds[pageNumber - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex = pageNumber - 1;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  next() {
    this.toggleAnswer(false);
    if (this.currentIndex < this.allReadFillInTheBlankIds.length - 1) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanksById(this.allReadFillInTheBlankIds[this.currentIndex + 1]).subscribe(
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
      this.httpService.getReadFillInTheBlanksById(this.allReadFillInTheBlankIds[this.currentIndex - 1]).subscribe(
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
    this.selectedFillInTheBlank = question;
    let descriptionInArrayMode = this.selectedFillInTheBlank.description.split(/[\s]+/);
    this.selectedFillInTheBlank._descriptionInArrayMode = [];
    this.selectedFillInTheBlank._answer = this.selectedFillInTheBlank.answer.trim().split('$');
    this.selectedFillInTheBlank._options = this.selectedFillInTheBlank.options.trim().split('$');
    let answer = _.cloneDeep(this.selectedFillInTheBlank._answer);
    let options = _.cloneDeep(this.selectedFillInTheBlank._options);
    for (let word of descriptionInArrayMode) {
      if (word.trim().toLowerCase() == '#404') {
        let thisAnswer = answer.shift();
        let thisOptions = options.shift().split('|');
        this.selectedFillInTheBlank._descriptionInArrayMode.push({text: word, options:thisOptions , answer: thisAnswer});
      } else {
        this.selectedFillInTheBlank._descriptionInArrayMode.push({text: word});
      }
    }
    window["ga"]('send', {
      hitType: 'event',
      eventCategory: 'read-fill-in-the-blank',
      eventAction: `Question:${ question.id} visited`
    });
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllReadFillInTheBlanksIds().flatMap((data)=> {

      if (data.body && data.body.length > 0) {
        this.allReadFillInTheBlankIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getReadFillInTheBlanksById(this.allReadFillInTheBlankIds[0]);
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
}

