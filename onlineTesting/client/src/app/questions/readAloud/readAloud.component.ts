import {Component, ViewChild, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {PlayerService} from '../shared/player.service';
import {RecorderService} from '../shared/recorder.service';
import {SpeakAloudRecorderComponent} from '../shared/speakaloudrecorder.component';
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'read-aloud',
  templateUrl: 'readAloud.component.html',
  styleUrls: ['readAloud.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class ReadAloudComponent implements OnInit {
  readAlouds: any = new Array();
  currentIndex: number = 0;
  pageFormControl = new FormControl();
  gotoNumber: any = '';

  @ViewChild(SpeakAloudRecorderComponent)
  private myChild: SpeakAloudRecorderComponent;

  constructor(private  httpService: PteHttpService, private player: PlayerService, private recorder: RecorderService) {


  }

  goto(pageNumber) {

    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.readAlouds.length) {
      console.log('invalid');
      return;
    }

    this.currentIndex = pageNumber - 1;
    if (this.currentIndex < this.readAlouds.length) {
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale, this.readAlouds[this.currentIndex].audioPathFemale);
      this.myChild.init();
      window["ga"]('send', {
        hitType: 'event',
        eventCategory: 'read-aloud',
        eventAction: `Question:${ pageNumber} visited`
      });
    }
  }

  next() {
    if (this.currentIndex < this.readAlouds.length - 1) {
      this.currentIndex++;
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale, this.readAlouds[this.currentIndex].audioPathFemale);
      this.myChild.init();
      window["ga"]('send', {
        hitType: 'event',
        eventCategory: 'read-aloud',
        eventAction: `Question:${this.currentIndex+1} visited`
      });
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.currentIndex--;
      this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale, this.readAlouds[this.currentIndex].audioPathFemale);
      this.myChild.init();
      window["ga"]('send', {
        hitType: 'event',
        eventCategory: 'read-aloud',
        eventAction: `Question:${this.currentIndex+1} visited`
      });
    }
  }


  ngOnInit(): void {
    this.httpService.getAllReadAloud().subscribe(
      data => {
        this.readAlouds = data.body;


        if (this.readAlouds.length > 0) {
          this.currentIndex = 0;
          this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale, this.readAlouds[this.currentIndex].audioPathFemale);
        }

        for (let readAloud of  this.readAlouds) {
          readAloud._action = 'preparation'
        }

      }
    );
  }
}

