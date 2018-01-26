import {Component, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';


@Component({
  selector: 'read-aloud',
  templateUrl: 'readAloud.component.html',
  styleUrls: ['readAloud.component.scss'],
})
export class ReadAloudComponent implements OnInit {
  readAlouds:any = new Array();
  currentIndex:number=0;
  constructor(private  httpService: PteHttpService) {

  }

  goto(pageNumber){
    this.currentIndex = pageNumber-1;
  }

  next() {
    if (this.currentIndex < this.readAlouds.length)
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
        this.readAlouds =  this.readAlouds.concat( this.readAlouds);
        this.readAlouds =  this.readAlouds.concat( this.readAlouds);
        this.readAlouds =  this.readAlouds.concat( this.readAlouds);
        this.readAlouds =  this.readAlouds.concat( this.readAlouds);
        this.readAlouds =  this.readAlouds.concat( this.readAlouds);
        console.log(this.readAlouds);
        if (this.readAlouds.length > 0) {
          this.currentIndex = 0;
        }

      }
    );
  }
}

