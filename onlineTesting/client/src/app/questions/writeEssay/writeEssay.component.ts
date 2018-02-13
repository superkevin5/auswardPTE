import {Component, OnInit, AfterContentInit} from '@angular/core';
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
export class WriteEssayComponent implements OnInit,AfterContentInit {
  allWriteEssayIds: any = new Array();

  selectedWriteEssay: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber:any='';


  constructor(private httpService: PteHttpService,private commonService:CommonService) {


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
    this.selectedWriteEssay= question;
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
}

