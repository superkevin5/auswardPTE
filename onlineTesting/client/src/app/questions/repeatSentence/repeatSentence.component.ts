import {Component, OnInit, OnDestroy} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {RecorderService} from '../shared/recorder.service';
import {PlayerService} from '../shared/player.service';
import {Observable} from 'rxjs';
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'repeat-sentence',
  templateUrl: 'repeatSentence.component.html',
  styleUrls: ['repeatSentence.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class RepeatSentenceComponent implements OnInit, OnDestroy {
  repeatSentences: any = new Array();
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
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.repeatSentences.length) {
      console.log('invalid');
      this.isLoading = false;
      return;
    }

    setTimeout(a => {
      this.clear();
      this.isLoading = false;
      this.currentIndex = pageNumber - 1;
    }, 800);
  }

  next() {
    if (this.currentIndex < this.repeatSentences.length - 1) {
      this.isLoading = true;
      setTimeout(a => {
        this.currentIndex++;
        this.clear();
        this.isLoading = false;
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
      }, 800);
    }
  }

  playRecord() {
    this.recorder.playRecord();
  }

  finishRecord(): void {
    this.clear();
    this.currentStatus = {text: "Completed", id: 2};
    this.recorder.stop();
  }

  startRecord(signal: string) {
    this.clear();
    this.recorder.stopCurrentRecordPlay();
    this.recordedDone = false;
    let start1 = 3;
    let preparationTimerObs = Observable.timer(1000, 1000)
      .map(tick => start1 - tick)
      .take(start1 + 1);

    let start2 = 10;
    let recordingTimerObs = Observable.timer(1000, 1000)
      .map(tick => start2 - tick)
      .take(start2 + 1);

    this.preparationTimer = preparationTimerObs.subscribe(tick => {
      console.log(tick);
      this.currentStatus = {text: "Beginning in " + tick + " seconds", id: 0};
    }, error => {

    }, () => {
      this.player.playBeep();

      setTimeout(a => {
        this.recorder.record();

        this.recordingTimer = recordingTimerObs.subscribe(tick => {

          let tempTick = tick < 10 ? "0" + tick : tick;
          this.currentStatus = {text: "Recording...  " + "00:" + tempTick, id: 1};
        }, error => {

        }, () => {
          this.finishRecord();
          this.recordedDone = true;
        });
      }, 800);
    });
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
    this.httpService.getAllRepeatSentences().subscribe(
      data => {
        this.repeatSentences = data.body;
        if (this.repeatSentences.length > 0) {
          this.currentIndex = 0;
        }
      }
    );
  }
}

