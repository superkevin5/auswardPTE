import {Component, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl, FormGroupDirective, NgForm, Validators} from '@angular/forms';

@Component({
  selector: 'read-aloud',
  templateUrl: 'readAloud.component.html',
  styleUrls: ['readAloud.component.scss'],
})
export class ReadAloudComponent implements OnInit {
  readAlouds: any = new Array();
  currentIndex: number = 0;

  pageFormControl = new FormControl();


  constructor(private  httpService: PteHttpService) {

  }

  goto(pageNumber) {
    this.currentIndex = pageNumber - 1;
  }

  next() {
    if (this.currentIndex < this.readAlouds.length-1)
      this.currentIndex++;
  }

  previous() {
    if (this.currentIndex > 0)
      this.currentIndex--;
  }


  ngOnInit(): void {
    this.httpService.getAllReadAloud().subscribe(
      data => {
        this.readAlouds = data.body;
        if (this.readAlouds.length > 0) {
          this.currentIndex = 0;
        }

      }
    );
  }
}

