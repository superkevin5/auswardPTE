import {Component, ViewChild, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {RecorderService} from '../shared/recorder.service';
import {HowlerPlayerService} from '../shared/howler.player';

@Component({
  selector: 'repeat-sentence',
  templateUrl: 'repeatSentence.component.html',
  styleUrls: ['repeatSentence.component.scss']
})
export class RepeatSentenceComponent implements OnInit {
  repeatSentences: any = new Array();
  currentIndex: number = 0;
  pageFormControl = new FormControl();
  gotoNumber:any='';
  //
  // @ViewChild(SpeakAloudRecorderComponent)
  // private myChild: SpeakAloudRecorderComponent;

  constructor(private  httpService: PteHttpService, private player: HowlerPlayerService) {


  }

  goto(pageNumber) {

    if(!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber>this.repeatSentences.length){
      console.log('invalid');
      return;
    }

    this.currentIndex = pageNumber - 1;
    if (this.currentIndex < this.repeatSentences.length) {
      // this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale,this.readAlouds[this.currentIndex].audioPathFemale);
      // this.myChild.init();
    }
  }

  next() {
    if (this.currentIndex < this.repeatSentences.length - 1) {
      this.currentIndex++;
      // this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale,this.readAlouds[this.currentIndex].audioPathFemale);
      // this.myChild.init();
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.currentIndex--;
      // this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale,this.readAlouds[this.currentIndex].audioPathFemale);
      // this.myChild.init();
    }
  }


  ngOnInit(): void {
    this.httpService.getAllRepeatSentences().subscribe(
      data => {
        this.repeatSentences = data.body;


        if (this.repeatSentences.length > 0) {
          this.currentIndex = 0;
          // this.player.init('readAloud', this.readAlouds[this.currentIndex].audioPathMale,this.readAlouds[this.currentIndex].audioPathFemale);
        }

        // for (let readAloud of  this.readAlouds) {
        //   readAloud._action= 'preparation'
        // }

      }
    );
  }
}

