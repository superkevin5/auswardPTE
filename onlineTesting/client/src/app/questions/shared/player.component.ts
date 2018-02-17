import {Component, OnInit, Input, OnDestroy, ViewChild, ElementRef, Output, EventEmitter} from '@angular/core';
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

  @Input() questionType: string = '';
  @Input() question: any = {};
  @Input() action: string = 'preparation';

  @Output() onPlayEnd: EventEmitter<string> = new EventEmitter<string>();

  @ViewChild("audio") audioRef: ElementRef;

  pageRenderingReady: boolean = false;
  audioPath: string = '';

  constructor(private player: PlayerService) {

  }

  clear(): void {

  }

  retry() {
    this.init();
  }

  init(): void {
    let audioPath = this.question.audioPath;
    this.audioPath = pteConstants.audioPathMap[this.questionType] + audioPath;
    this.pageRenderingReady = true;
  }

  play(questionType, audioPath): void {
    this.player.init(questionType, audioPath, audioPath);
    this.player.playMale();
  }

  isPlaying() {
    return this.player.isMalePlaying();
  }

  pauseMale() {
    this.player.pauseMale();
  }

  ngOnInit(): void {
    this.init();
  }

  ngAfterViewInit(): void {
    let onPlayEnd = this.onPlayEnd;

    this.audioRef.nativeElement.addEventListener('ended', function () {
      console.log('ended');
      onPlayEnd.emit('end');
    });
  }

  ngOnDestroy() {

  }
}

