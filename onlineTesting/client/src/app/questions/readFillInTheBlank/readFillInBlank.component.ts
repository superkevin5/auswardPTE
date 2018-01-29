import {Component, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';

@Component({
  selector: 'read-fill-in-the-blank',
  templateUrl: 'readFillInBlank.component.html',
  styleUrls: ['readFillInBlank.component.scss']
})
export class ReadFillInBlankComponent implements OnInit {
  pageFormControl = new FormControl();

  constructor() {


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

  }
}

