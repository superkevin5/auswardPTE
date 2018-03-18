import {Component, OnInit, OnDestroy} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {RecorderService} from '../shared/recorder.service';
import {PlayerService} from '../shared/player.service';
import {Observable} from 'rxjs';
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'short-question',
  templateUrl: 'answerShortQuestion.component.html',
  styleUrls: ['answerShortQuestion.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class AnswerShortQuestionComponent implements OnInit, OnDestroy {
  shortQuestions: any = new Array();
  currentIndex: number = 0;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  isAnswer: boolean = false;
  isLoading: boolean = false;
  recordedDone: boolean = false;
  recordingTimer: any = '';
  preparationTimer: any = '';
  currentStatus: any = {text: '', id: -1};


  constructor(private  httpService: PteHttpService, private player: PlayerService, private recorder: RecorderService) {
  }

  toggleAnswer(a: boolean): void {
    this.isAnswer = a;
  }

  goto(pageNumber) {
    this.isLoading = true;
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.shortQuestions.length) {
      console.log('invalid');
      this.isLoading = false;
      return;
    }

    setTimeout(a => {
      this.clear();
      this.isLoading = false;
      this.currentIndex = pageNumber - 1;
      window["ga"]('send', {
        hitType: 'event',
        eventCategory: 'answer-short-question',
        eventAction: `Question:${this.currentIndex+1} visited`
      });
    }, 800);
  }

  next() {
    if (this.currentIndex < this.shortQuestions.length - 1) {
      this.isLoading = true;
      setTimeout(a => {
        this.currentIndex++;
        this.clear();
        this.isLoading = false;
        window["ga"]('send', {
          hitType: 'event',
          eventCategory: 'answer-short-question',
          eventAction: `Question:${this.currentIndex+1} visited`
        });
      }, 800);
    }
  }

  cancelPreparationTimer(): void {
    if (this.preparationTimer) {
      this.preparationTimer.unsubscribe();
    }
  }

  cancelRecordomgTimer(): void {
    if (this.recordingTimer) {
      this.recordingTimer.unsubscribe();
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.isLoading = true;
      setTimeout(a => {
        this.currentIndex--;
        this.clear();
        this.isLoading = false;
        window["ga"]('send', {
          hitType: 'event',
          eventCategory: 'answer-short-question',
          eventAction: `Question:${this.currentIndex+1} visited`
        });
      }, 800);
    }
  }

  playerEnd(signal: string) {
    console.log('Audio ended');
  }

  clear(): void {
    this.currentStatus = {text: '', id: -1};
    this.recordedDone = false;
    this.player.stop();
    this.recorder.init();
    this.cancelPreparationTimer();
    this.cancelRecordomgTimer();
  }


  ngOnDestroy() {
    this.cancelPreparationTimer();
    this.cancelRecordomgTimer();
  }

  ngOnInit(): void {
    this.httpService.getAllAnswerShortQuestions().subscribe(
      data => {
        this.shortQuestions = data.body;
        if (this.shortQuestions.length > 0) {
          this.currentIndex = 0;
        }
      }
    );
  }
}

