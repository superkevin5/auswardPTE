import {Component, OnInit, AfterContentInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import * as _ from "lodash";

@Component({
  selector: 'read-reorder-paragraph',
  templateUrl: 'readReorderParagraph.component.html',
  styleUrls: ['readReorderParagraph.component.scss']
})
export class ReadReorderParagraphComponent implements OnInit,AfterContentInit {

  allReadReorderParagraphIds: any = new Array();

  selectedReadReorderParagraph: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();

  constructor(private httpService: PteHttpService,private commonService:CommonService) {


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
        }, error=> {

        }, ()=> {
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
      this.httpService.getReadReorderParagraphById(this.allReadReorderParagraphIds[this.currentIndex - 1]).subscribe(
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
    this.selectedReadReorderParagraph = question;
    this.selectedReadReorderParagraph._answer = this.selectedReadReorderParagraph.questionTitle.answer.trim().replace(/\$/g, '').split('|');
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllReadReorderParagraphIds().flatMap((data)=> {

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

