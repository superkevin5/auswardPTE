import {Component, ViewChild, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {PlayerService} from '../shared/player.service';
import {RecorderService} from '../shared/recorder.service';
import {RecorderComponent} from '../shared/recorder.component';

@Component({
  selector: 'read-aloud',
  templateUrl: 'readAloud.component.html',
  styleUrls: ['readAloud.component.scss'],
  directives:[RecorderComponent]
})
export class ReadAloudComponent implements OnInit {
  readAlouds: any = new Array();
  currentIndex: number = 0;
  pageFormControl = new FormControl();

  @ViewChild(RecorderComponent)
  private myChild: RecorderComponent;

  constructor(private  httpService: PteHttpService, private player: PlayerService,private recorder:RecorderService) {


  }

  play(readAloudItem) {
    this.player.play();
  }


  record(){
    this.recorder.record();
  }
  playRecord(){
    this.recorder.playRecord();
  }
  stopRecord(){
    this.recorder.stop();
  }

  goto(pageNumber) {
    this.currentIndex = pageNumber - 1;
    if (this.currentIndex < this.readAlouds.length) {
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPath);
      this.myChild.init();
    }
  }

  next() {
    if (this.currentIndex < this.readAlouds.length - 1) {
      this.currentIndex++;
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPath);
      this.myChild.init();
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.currentIndex--;
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPath);
      this.myChild.init();
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

        for (let readAloud of  this.readAlouds) {
          readAloud._action= 'preparation'
        }

      }
    );
  }
}

