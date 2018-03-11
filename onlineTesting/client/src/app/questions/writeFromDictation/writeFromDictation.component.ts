import {Component, OnInit, OnDestroy} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {RecorderService} from '../shared/recorder.service';
import {PlayerService} from '../shared/player.service';
import {Observable} from 'rxjs';

@Component({
  selector: 'write-from-dictation',
  templateUrl: 'writeFromDictation.component.html',
  styleUrls: ['writeFromDictation.component.scss']
})
export class WriteFromDictationComponent implements OnInit, OnDestroy {
  writeFromDictations: any = new Array();
  currentIndex: number = 0;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  isAnswer: boolean = false;
  isLoading: boolean = false;
  recordedDone: boolean = false;
  recordingTimer: any = '';
  preparationTimer: any = '';
  currentStatus: any = {text: '', id: -1};
  essayRecorded:'';


  constructor(private  httpService: PteHttpService, private player: PlayerService, private recorder: RecorderService) {
  }

  toggleAnswer(a: boolean): void {
    this.isAnswer = a;
  }

  goto(pageNumber) {
    this.isLoading = true;
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.writeFromDictations.length) {
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
    if (this.currentIndex < this.writeFromDictations.length - 1) {
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

  playerEnd(signal: string) {
    console.log('Audio ended');
  }

  clear(): void {
    this.currentStatus = {text: '', id: -1};
    this.recordedDone = false;
    this.essayRecorded ='';
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
    this.httpService.getAllWriteFromDictation().subscribe(
      data => {
        this.writeFromDictations = data.body;
        if (this.writeFromDictations.length > 0) {
          this.currentIndex = 0;
        }
      }
    );
  }
}

