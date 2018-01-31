import {Component, OnInit,AfterContentInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';

@Component({
  selector: 'read-fill-in-the-blank',
  templateUrl: 'readFillInBlank.component.html',
  styleUrls: ['readFillInBlank.component.scss']
})
export class ReadFillInBlankComponent implements OnInit,AfterContentInit {

  allReadFillInTheBlankIds: any = new Array();

  selectedFillInTheBlank: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  pageFormControl = new FormControl();

  constructor(private httpService: PteHttpService) {


  }

  goto(pageNumber) {

    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allReadFillInTheBlankIds.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.allReadFillInTheBlankIds.length) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanksById(this.allReadFillInTheBlankIds[pageNumber - 1]).subscribe(
        data => {
          this.selectedFillInTheBlank = data.body;
          this.selectedFillInTheBlank._descriptionInArrayMode = this.selectedFillInTheBlank.description.split(/[\s]+/);
          this.currentIndex = pageNumber - 1;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  next() {
    if (this.currentIndex < this.allReadFillInTheBlankIds.length - 1) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanksById(this.allReadFillInTheBlankIds[this.currentIndex + 1]).subscribe(
        data => {
          this.selectedFillInTheBlank = data.body;
          this.selectedFillInTheBlank._descriptionInArrayMode = this.selectedFillInTheBlank.description.split(/[\s]+/);
          this.currentIndex++;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanksById(this.allReadFillInTheBlankIds[this.currentIndex - 1]).subscribe(
        data => {
          this.selectedFillInTheBlank = data.body;
          this.selectedFillInTheBlank._descriptionInArrayMode = this.selectedFillInTheBlank.description.split(/[\s]+/);
          this.currentIndex--;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
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
        return Observable.of({body:'1'});
      }
    })
      .subscribe(
        data => {
          this.selectedFillInTheBlank = data.body;
          this.selectedFillInTheBlank._descriptionInArrayMode = this.selectedFillInTheBlank.description.split(/[\s]+/);

          this.slect = '<button>d</button>'
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

