import {Component, OnInit, OnDestroy} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {PlayerService} from '../shared/player.service';
import {Observable} from 'rxjs';
import {MatDialog} from '@angular/material';
import {pteConstants} from '../../pteConstants';
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'summarise-spoken-text',
  templateUrl: 'summariseSpokenText.component.html',
  styleUrls: ['summariseSpokenText.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class SummariseSpokenTextComponent implements OnInit, OnDestroy {
  allsummariseSpokenTextIds: any = new Array();
  summariseSpokenText: any = '';
  currentIndex: number = 0;
  countDown: string = '10:00';
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  isAnswer: boolean = false;
  isLoading: boolean = false;
  _sub: any = '';
  essayRecorded: any = '';

  constructor(private  httpService: PteHttpService, private player: PlayerService) {
  }

  toggleAnswer(a: boolean): void {
    this.isAnswer = a;
  }

  clear(): void {
    this.essayRecorded = '';
    this.countDown = '10:00';
    if (this._sub) {
      this._sub.unsubscribe();
    }
    this.player.stop();
  }

  secondsToMinutesAndSeconds(totalSeconds): string {

    let minutes = Math.floor(totalSeconds / 60);
    let remainder = totalSeconds % 60;
    if (remainder == 0) {
      return `${minutes}:00`;
    } else {
      return remainder < 10 ? `${minutes}:0${remainder}` : `${minutes}:${remainder}`;
    }
  }


  startRecord(signal: string) {
    this.clear();
    this._sub = Observable.interval(1000).takeUntil(Observable.timer(1000 * 60 * 10 + 2000))
      .subscribe(val => {
        this.countDown = this.secondsToMinutesAndSeconds(60 * 10 - val);
      });
  }

  ngOnDestroy() {
  }

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allsummariseSpokenTextIds.length) {
      console.log('invalid');
      return;
    }
    this.clear();
    if (pageNumber <= this.allsummariseSpokenTextIds.length) {
      this.isLoading = true;
      this.httpService.getSummariseSpokenTextById(this.allsummariseSpokenTextIds[pageNumber - 1]).subscribe(
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
    window.open(this.summariseSpokenText.descriptionPath);
  }

  openNote() {
    window.open(this.summariseSpokenText.notePath);
  }
  next() {
    this.toggleAnswer(false);
    if (this.currentIndex < this.allsummariseSpokenTextIds.length - 1) {
      this.isLoading = true;
      this.clear();
      this.httpService.getSummariseSpokenTextById(this.allsummariseSpokenTextIds[this.currentIndex + 1]).subscribe(
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
      this.httpService.getSummariseSpokenTextById(this.allsummariseSpokenTextIds[this.currentIndex - 1]).subscribe(
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
    this.summariseSpokenText = question;
    this.summariseSpokenText.descriptionPath = `${pteConstants.descriptionPath.summariseSpokenText}${this.summariseSpokenText.descriptionPath}`;
    this.summariseSpokenText.notePath = `${pteConstants.notePath.summariseSpokenText}${this.summariseSpokenText.notePath}`;
    window["ga"]('send', {
      hitType: 'event',
      eventCategory: 'summarise-spoken-text',
      eventAction: `Question:${question.id} visited`
    });
  }

  ngOnInit(): void {
    this.isLoading = true;
    this.httpService.getAllSummariseSpokenTextIds().flatMap((data) => {

      if (data.body && data.body.length > 0) {
        this.allsummariseSpokenTextIds = data.body;
        this.currentIndex = 0;
        return this.httpService.getSummariseSpokenTextById(this.allsummariseSpokenTextIds[0]);
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
}

