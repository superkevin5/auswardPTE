import {Component, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';

@Component({
  selector: 'read-fill-in-the-blank',
  templateUrl: 'readFillInBlank.component.html',
  styleUrls: ['readFillInBlank.component.scss']
})
export class ReadFillInBlankComponent implements OnInit {

  allReadFillInTheBlankIds: any = new Array();

  pageFormControl = new FormControl();

  constructor(private httpService: PteHttpService) {


  }

  play() {


  }

  record() {

  }

  playRecord() {

  }

  stopRecord() {

  }

  goto() {


  }

  next() {

  }

  previous() {

  }


  ngOnInit(): void {
    this.httpService.getAllReadFillInTheBlanksIds().flatMap((data)=>{

        if(data.body){
          this.allReadFillInTheBlankIds = data.body;
          return  this.httpService.getReadFillInTheBlanksById( this.allReadFillInTheBlankIds[0]);
        }
        else {
          return Observable.create((observer) => {
            observer.next(1);
            observer.complete();
          });
        }
      })
      .subscribe(
      data => {

        console.log(data);

      }
    );


  }
}

