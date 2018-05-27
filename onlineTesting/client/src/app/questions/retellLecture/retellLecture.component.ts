import {Component, OnInit, OnDestroy} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {RecorderService} from '../shared/recorder.service';
import {PlayerService} from '../shared/player.service';
import {Observable} from 'rxjs';
import {MatDialog} from '@angular/material';
import {Dialog} from '../shared/dialog.component';
import {pteConstants} from '../../pteConstants';
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'retell-lecture',
  templateUrl: 'retellLecture.component.html',
  styleUrls: ['retellLecture.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class RetellLectureComponent implements OnInit, OnDestroy {
  allRetellLectureIds: any = new Array();
  retellLecture: any = '';
  currentIndex: number = 0;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  isAnswer: boolean = false;
  isLoading: boolean = false;
  recordedDone: boolean = false;
  recordingTimer: any = '';
  preparationTimer: any = '';
  currentStatus: any = {text: '', id: -1};

  constructor(private  httpService: PteHttpService, private player: PlayerService, private recorder: RecorderService, public dialog: MatDialog) {
  }

  toggleAnswer(a: boolean): void {
    this.isAnswer = a;
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

  playRecord() {
    this.recorder.playRecord();
  }

  finishRecord(): void {
    this.clear();
    this.currentStatus = {text: "Completed", id: 2};
    this.recordedDone = true;
    this.recorder.stop();
  }

  isRecordedRecording() {
    return this.recorder.isRecording;
  }

  startRecord(signal: string) {
    this.clear();
    this.recorder.stopCurrentRecordPlay();
    this.recordedDone = false;
    let start1 = 10;
    let preparationTimerObs = Observable.timer(1000, 1000)
      .map(tick => start1 - tick)
      .take(start1 + 1);

    let start2 = 40;
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

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allRetellLectureIds.length) {
      console.log('invalid');
      return;
    }
    this.clear();
    if (pageNumber <= this.allRetellLectureIds.length) {
      this.isLoading = true;
      this.httpService.getRetellLectureById(this.allRetellLectureIds[pageNumber - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex = pageNumber - 1;
        }, error => {

        }, () => {
          this.isLoading = false;
        });
    }
  }

  downloadScript() {
    window.open( this.retellLecture.descriptionPath);
  }

  openNote() {
    window.open( this.retellLecture.notePath);
  }
  retry($event) {

    console.log($event);
    const dialogRef = this.dialog.open(Dialog, {
      data: {
        title: 'Are you sure to retry?'
      },
      autoFocus: false
    });

    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        this.toggleAnswer(false);
        this.isLoading = true;
        this.clear();
        this.httpService.getRetellLectureById(this.allRetellLectureIds[this.currentIndex]).subscribe(
          data => {
            this.processQuestions(data.body);
          }, error => {

          }, () => {
            this.isLoading = false;
          });
      }
    });
  }

  next() {
    this.toggleAnswer(false);
    if (this.currentIndex < this.allRetellLectureIds.length - 1) {
      this.isLoading = true;
      this.clear();
      this.httpService.getRetellLectureById(this.allRetellLectureIds[this.currentIndex + 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex++;
        }, error => {

        }, () => {
          this.isLoading = false;
        });
    }
  }

  previous() {
    this.toggleAnswer(false);
    if (this.currentIndex > 0) {
      this.isLoading = true;
      this.clear();
      this.httpService.getRetellLectureById(this.allRetellLectureIds[this.currentIndex - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex--;
        }, error => {

        }, () => {
          this.isLoading = false;
        });
    }
  }

  processQuestions(question): void {
    this.retellLecture = question;
    this.retellLecture.descriptionPath = `${pteConstants.descriptionPath.retellLecture}${this.retellLecture.descriptionPath}`;
    this.retellLecture.imagePath = this.retellLecture.imagePath ? `${pteConstants.imagePath.retellLecture}${this.retellLecture.imagePath}` : '';
    this.retellLecture.notePath = `${pteConstants.notePath.retellLecture}${this.retellLecture.notePath}`;
    window["ga"]('send', {
      hitType: 'event',
      eventCategory: 'retell-lecture',
      eventAction: `Question:${question.id} visited`
    });
  }

  ngOnInit(): void {
    this.isLoading = true;
    this.httpService.getAllRetellLectureIds().flatMap((data) => {

      if (data.body && data.body.length > 0) {
        this.allRetellLectureIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getRetellLectureById(this.allRetellLectureIds[0]);
      }
      else {
        return Observable.of({body: '1'});
      }
    })
      .subscribe(
        data => {
          this.processQuestions(data.body);
        },
        error => {

        },
        () => {
          this.isLoading = false;
        }
      );
  }

  // ngOnInit(): void {
  //   this.httpService.getAllRetellLectureIds().subscribe(
  //     data => {
  //       this.repeatSentences = data.body;
  //       if (this.repeatSentences.length > 0) {
  //         this.currentIndex = 0;
  //       }
  //     }
  //   );
  // }
}

