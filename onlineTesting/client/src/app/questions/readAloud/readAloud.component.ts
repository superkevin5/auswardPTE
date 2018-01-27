import {Component, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {PlayerService} from '../shared/player.service';


@Component({
  selector: 'read-aloud',
  templateUrl: 'readAloud.component.html',
  styleUrls: ['readAloud.component.scss'],
})
export class ReadAloudComponent implements OnInit {
  readAlouds: any = new Array();
  currentIndex: number = 0;
  pageFormControl = new FormControl();


  constructor(private  httpService: PteHttpService, private player: PlayerService) {


  }

  play(readAloudItem) {
    this.player.play();
  }

  goto(pageNumber) {
    this.currentIndex = pageNumber - 1;
    if (this.currentIndex < this.readAlouds.length) {
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPath);
    }
  }

  next() {
    if (this.currentIndex < this.readAlouds.length - 1) {
      this.currentIndex++;
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPath);
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.currentIndex--;
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPath);
    }
  }


  ngOnInit(): void {
    this.httpService.getAllReadAloud().subscribe(
      data => {
        this.readAlouds = data.body;
        if (this.readAlouds.length > 0) {
          this.currentIndex = 0;
          this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPath);
        }

      }
    );
  }
}

