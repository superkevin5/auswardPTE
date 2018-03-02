import {Component, OnInit, AfterContentInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import * as _ from "lodash";

@Component({
  selector: 'high-light-incorrect-words',
  templateUrl: 'highLightIncorrectWords.component.html',
  styleUrls: ['highLightIncorrectWords.component.scss']
})
export class HighLightIncorrectWordsComponent implements OnInit,AfterContentInit {

  allHighLightIncorrectWordsIds: any = new Array();

  selectedIncorrectedWord: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  answerBook: any = new Array();

  constructor(private httpService: PteHttpService, private commonService: CommonService) {


  }

  isSelected(index: number) {
    if (this.answerBook.indexOf(index) != -1) {
      return true;
    } else {
      return false;
    }
  }

  isSelectedCorrect(index: number) {
    let wordAfter = '';
    if(this.selectedIncorrectedWord._descriptionInArrayMode[index + 1]){
      wordAfter = this.selectedIncorrectedWord._descriptionInArrayMode[index + 1];
    }
    return this.isAnswer && this.isSelected(index) && wordAfter.text === '#404';
  }
  isSelectedNotCorrect(index: number) {
    let wordAfter = '';
    if(this.selectedIncorrectedWord._descriptionInArrayMode[index + 1]){
      wordAfter = this.selectedIncorrectedWord._descriptionInArrayMode[index + 1];
    }
    return this.isAnswer && this.isSelected(index) && wordAfter.text !== '#404';
  }

  toggleWord(index: number) {
    var wordId = this.answerBook.indexOf(index);
    if (wordId != -1) {
      this.answerBook.splice(wordId, 1);
    } else {
      this.answerBook.push(index);
    }
  }

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allHighLightIncorrectWordsIds.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.allHighLightIncorrectWordsIds.length) {
      this.isLoading = true;
      this.httpService.getListenFillInTheBlanksById(this.allHighLightIncorrectWordsIds[pageNumber - 1]).subscribe(
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
    if (this.currentIndex < this.allHighLightIncorrectWordsIds.length - 1) {
      this.isLoading = true;
      this.httpService.getListenFillInTheBlanksById(this.allHighLightIncorrectWordsIds[this.currentIndex + 1]).subscribe(
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
      this.httpService.getHighLightIncorrectWordById(this.allHighLightIncorrectWordsIds[this.currentIndex - 1]).subscribe(
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

  processQuestions(question): void {

    this.selectedIncorrectedWord = question;
    let descriptionInArrayMode = this.selectedIncorrectedWord.description.split(/[\s]+/);
    this.selectedIncorrectedWord._descriptionInArrayMode = [];
    this.selectedIncorrectedWord._answer = this.selectedIncorrectedWord.answer.trim().replace(/\$/g, '').split('|');
    let answer = _.cloneDeep(this.selectedIncorrectedWord._answer);
    for (let word of descriptionInArrayMode) {

      if (word.trim().toLowerCase() == '#404') {
        let thisAnswer = answer.shift();
        this.selectedIncorrectedWord._descriptionInArrayMode.push({text: word, answer: thisAnswer});
      } else {
        this.selectedIncorrectedWord._descriptionInArrayMode.push({text: word});
      }
    }
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllHighLightIncorrectWordsIds().flatMap((data)=> {

      if (data.body && data.body.length > 0) {
        this.allHighLightIncorrectWordsIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getHighLightIncorrectWordById(this.allHighLightIncorrectWordsIds[0]);
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

