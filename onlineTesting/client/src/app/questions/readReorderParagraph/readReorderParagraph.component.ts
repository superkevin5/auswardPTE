import {Component, OnInit, AfterContentInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import {DropEvent} from 'ng-drag-drop';
import * as _ from "lodash";
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'read-reorder-paragraph',
  templateUrl: 'readReorderParagraph.component.html',
  styleUrls: ['readReorderParagraph.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class ReadReorderParagraphComponent implements OnInit,AfterContentInit {

  allReadReorderParagraphIds: any = new Array();

  selectedReadReorderParagraph: any = {_userAnswer: [],question:[]};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber:any='';


  constructor(private httpService: PteHttpService, private commonService: CommonService) {


  }

  onList1Drop(e: DropEvent) {
    this.selectedReadReorderParagraph.question.push(e.dragData);
    this.removeItem(e.dragData, this.selectedReadReorderParagraph._userAnswer);
  }

  onList2Drop(e: DropEvent) {
    this.selectedReadReorderParagraph._userAnswer.push(e.dragData);
    this.removeItem(e.dragData,  this.selectedReadReorderParagraph.question);
  }

  removeItem(item: any, list: Array<any>) {

    let index = list.map(function (e) {
      return e.id
    }).indexOf(item.id);

    list.splice(index, 1);
  }

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allReadReorderParagraphIds.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.allReadReorderParagraphIds.length) {
      this.isLoading = true;
      this.httpService.getReadReorderParagraphById(this.allReadReorderParagraphIds[pageNumber - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex = pageNumber - 1;
        }, error => {

        }, () => {
          this.isLoading = false;
        });
    }
  }

  next() {
    this.toggleAnswer(false);
    if (this.currentIndex < this.allReadReorderParagraphIds.length - 1) {
      this.isLoading = true;
      this.httpService.getReadReorderParagraphById(this.allReadReorderParagraphIds[this.currentIndex + 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex++;
        }, error => {

        }, () => {
          this.isLoading = false;
        });
    }
  }

  previous() {
    this.toggleAnswer(false);
    if (this.currentIndex > 0) {
      this.isLoading = true;
      this.httpService.getReadReorderParagraphById(this.allReadReorderParagraphIds[this.currentIndex - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex--;
        }, error => {

        }, () => {
          this.isLoading = false;
        });
    }
  }

  toggleAnswer(a: boolean): void {
    this.isAnswer = a;
  }

  processQuestions(question): void {
    this.selectedReadReorderParagraph = question;
    this.selectedReadReorderParagraph._userAnswer = [];
    this.selectedReadReorderParagraph._answer = this.selectedReadReorderParagraph.questionTitle.answer.trim().replace(/\$/g, '').split('|').join(" ");
    window["ga"]('send', {
      hitType: 'event',
      eventCategory: 'read-reorder-paragraph',
      eventAction: `Question:${ this.currentIndex+1} visited`
    });
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllReadReorderParagraphIds().flatMap((data) => {

      if (data.body && data.body.length > 0) {
        this.allReadReorderParagraphIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getReadReorderParagraphById(this.allReadReorderParagraphIds[0]);
      }
      else {
        return Observable.of({body: '1'});
      }
    })
      .subscribe(
        data => {
          this.processQuestions(data.body);
        },
        error => {

        },
        () => {
          this.isLoading = false;
        }
      );

  }

  ngOnInit(): void {

  }
}

