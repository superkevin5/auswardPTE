import {Component, OnInit, Input, ngOnDestroy} from '@angular/core';
import {PlayerService} from './player.service';
import {RecorderService} from './recorder.service';
import {Observable} from 'rxjs';
import {Subscription} from 'rxjs/Subscription';

@Component({
  selector: 'pte-recorder',
  templateUrl: 'recorder.component.html',
  styleUrls: ['recorder.component.scss'],
})
export class RecorderComponent implements OnInit,ngOnDestroy {

  currentStatus: string = '';
  preparationTimer: Subscription = new Subscription();
  recordingTimer: Subscription = new Subscription();
  @Input() preparationCount: number = 0;
  @Input() action: string = 'preparation';

  constructor(private player: PlayerService, private recorder: RecorderService) {

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
    this.currentStatus = '';
    this.cancelPreparationTimer();
    this.cancelRecordomgTimer();
  }

  init(): void {
    this.clear();
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
        this.currentStatus = "Beginning in " + tick + " seconds";
      }, error=> {

      }, ()=> {
        this.recorder.record();

        this.recordingTimer = recordingTimerObs.subscribe(tick => {
          this.currentStatus = "Recording...  " + "00:" + tick;
        }, error=> {

        }, ()=> {
          this.currentStatus = "Completed";
        });

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

