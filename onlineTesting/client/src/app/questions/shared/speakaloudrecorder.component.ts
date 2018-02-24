import {Component, OnInit, Input, OnDestroy} from '@angular/core';
import {PlayerService} from './player.service';
import {RecorderService} from './recorder.service';
import {Observable} from 'rxjs';
import {Subscription} from 'rxjs/Subscription';

@Component({
  selector: 'pte-speak-aloud-recorder',
  templateUrl: 'speakaloudrecorder.component.html',
  styleUrls: ['speakaloudrecorder.component.scss'],
})
export class SpeakAloudRecorderComponent implements OnInit,OnDestroy {

  currentStatus:any={text: '', id: -1};
  preparationTimer: any = '';
  recordingTimer: any = '';
  @Input() preparationCount: number = 0;
  @Input() action: string = 'preparation';

  constructor(private player: PlayerService, private recorder: RecorderService) {

  }

  answerMale() {
    this.recorder.stopCurrentRecordPlay();
    this.player.playMale();
  }
  answerFemale() {
    this.recorder.stopCurrentRecordPlay();
    this.player.playFemale();
  }

  playRecord(): void {
    this.clear();
    this.currentStatus = {text: "Completed", id: 2};
    this.recorder.playRecord();
  }

  finishRecord(): void {
    this.clear();
    this.currentStatus = {text: "Completed", id: 2};
    this.recorder.stop();
    console.log('finish record');
  }

  skipPreparation(): void {
    this.cancelPreparationTimer();
    this.cancelRecordomgTimer();
    let start = this.preparationCount;
    let recordingTimerObs = Observable.timer(1000, 1000)
      .map(tick => start - tick)
      .take(start + 1);


    this.player.playBeep();

    setTimeout(a => {
      this.recordingTimer = recordingTimerObs.subscribe(tick => {
        this.currentStatus = {text: "Recording...  " + "00:" + tick, id: 1};
      }, error => {

      }, () => {
        this.finishRecord();
      });
      this.recorder.record();
    }, 800);
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

  clear(): void {
    this.currentStatus = {text:'',id:-1};
    this.player.stop();
    this.cancelPreparationTimer();
    this.cancelRecordomgTimer();
  }

  retry() {
    this.init();
  }

  init(): void {
    this.clear();
    this.recorder.stopCurrentRecordPlay();
    if (this.preparationCount != 0) {
      let start = this.preparationCount;

      let preparationTimerObs = Observable.timer(1000, 1000)
        .map(tick => start - tick)
        .take(start + 1);

      let recordingTimerObs = Observable.timer(1000, 1000)
        .map(tick => start - tick)
        .take(start + 1);


      this.preparationTimer = preparationTimerObs.subscribe(tick => {
        console.log(tick);
        this.currentStatus = {text: "Beginning in " + tick + " seconds", id: 0};
      }, error => {

      }, () => {
        this.player.playBeep();

        setTimeout(a => {
          this.recorder.record();

          this.recordingTimer = recordingTimerObs.subscribe(tick => {
            this.currentStatus = {text: "Recording...  " + "00:" + tick, id: 1};
          }, error => {

          }, () => {
            this.finishRecord();
          });
        }, 800);
      });
    }
  }

  ngOnInit(): void {
    this.init();
  }

  ngOnDestroy() {
    this.cancelPreparationTimer();
    this.cancelRecordomgTimer();
  }
}

