import {Component, OnInit} from '@angular/core';
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
  gotoNumber: any = '';
  isAnswer: boolean = false;
  isLoading: boolean = false;

  constructor(private  httpService: PteHttpService, private player: HowlerPlayerService) {
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

    this.isLoading = false;
    this.currentIndex = pageNumber - 1;
  }

  next() {
    this.isLoading = true;
    if (this.currentIndex < this.repeatSentences.length - 1) {
      this.currentIndex++;
    }
    this.isLoading = false;
  }

  previous() {
    this.isLoading = true;
    if (this.currentIndex > 0) {
      this.currentIndex--;
    }
    this.isLoading = false;
  }

  startRecord(signal:string) {
    console.log(signal);
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

