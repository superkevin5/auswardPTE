import {Component, OnInit, Input, OnDestroy} from '@angular/core';
import {PlayerService} from './player.service';
import {Observable} from 'rxjs';
import {Subscription} from 'rxjs/Subscription';
import {pteConstants} from '../../pteConstants';
import * as _ from "lodash";


@Component({
  selector: 'pte-player',
  templateUrl: 'player.component.html',
  styleUrls: ['player.component.scss'],
})
export class PlayerComponent implements OnInit,OnDestroy {

  @Input() questionType:string = '';
  @Input() question: any= {};
  @Input() action: string = 'preparation';
  pageRenderingReady:booelan = false;
  audioPath:string = '';

  constructor(private player: PlayerService) {

  }

  clear(): void {

  }

  retry() {
    this.init();
  }

  init(): void {
    let  audioPath = this.question.audioPath;
    console.log(audioPath);
    console.log(pteConstants.audioPathMap[this.questionType]);
    this.audioPath = pteConstants.audioPathMap[this.questionType] + audioPath;
    console.log(this.audioPath);
    this.pageRenderingReady = true;
  }

  isPlaying(){

  }

  play(questionType, audioPath): void {
    this.player.init(questionType, audioPath,audioPath);
    this.player.playMale();
  }

  isPlaying(){
    return this.player.isMalePlaying();
  }

  pauseMale() {
    this.player.pauseMale();
  }

  ngOnInit(): void {
    this.init();
  }

  ngOnDestroy() {

  }
}

