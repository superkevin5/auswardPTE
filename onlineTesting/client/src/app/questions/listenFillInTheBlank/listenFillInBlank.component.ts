import {Component, OnInit, AfterContentInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import * as _ from "lodash";

@Component({
  selector: 'listen-fill-in-the-blank',
  templateUrl: 'listenFillInBlank.component.html',
  styleUrls: ['listenFillInBlank.component.scss']
})
export class ListenFillInBlankComponent implements OnInit,AfterContentInit {

  allListenFillInTheBlankIds: any = new Array();

  selectedFillInTheBlank: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber: any = '';


  constructor(private httpService: PteHttpService, private commonService: CommonService) {


  }

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allListenFillInTheBlankIds.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.allListenFillInTheBlankIds.length) {
      this.isLoading = true;
      this.httpService.getListenFillInTheBlanksById(this.allListenFillInTheBlankIds[pageNumber - 1]).subscribe(
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
    if (this.currentIndex < this.allListenFillInTheBlankIds.length - 1) {
      this.isLoading = true;
      this.httpService.getListenFillInTheBlanksById(this.allListenFillInTheBlankIds[this.currentIndex + 1]).subscribe(
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
      this.httpService.getListenFillInTheBlanksById(this.allListenFillInTheBlankIds[this.currentIndex - 1]).subscribe(
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

    this.selectedFillInTheBlank = question;
    let descriptionInArrayMode = this.selectedFillInTheBlank.description.split(/[\s]+/);
    this.selectedFillInTheBlank._descriptionInArrayMode = [];
    this.selectedFillInTheBlank._answer = this.selectedFillInTheBlank.answer.trim().replace(/\$/g, '').split('|');
    let answer = _.cloneDeep(this.selectedFillInTheBlank._answer);
    for (let word of descriptionInArrayMode) {

      if (word.trim().toLowerCase() == '#404') {
        let thisAnswer = answer.shift();
        this.selectedFillInTheBlank._descriptionInArrayMode.push({text: word, answer: thisAnswer});
      } else {
        this.selectedFillInTheBlank._descriptionInArrayMode.push({text: word});
      }
    }
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllListenFillInTheBlanksIds().flatMap((data)=> {

      if (data.body && data.body.length > 0) {
        this.allListenFillInTheBlankIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getListenFillInTheBlanksById(this.allListenFillInTheBlankIds[0]);
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

