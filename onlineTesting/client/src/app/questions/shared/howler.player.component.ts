import {Component, OnInit, Input, OnDestroy} from '@angular/core';
import {HowlerPlayerService} from './howler.player';
import {Observable} from 'rxjs';
import {Subscription} from 'rxjs/Subscription';
import {pteConstants} from '../../pteConstants';
import * as _ from "lodash";


@Component({
  selector: 'howler-player',
  templateUrl: 'howler.player.component.html',
  styleUrls: ['howler.player.component.scss'],
})
export class HowlerPlayerComponent implements OnInit,OnDestroy {

  playSeek: number = 0;

  @Input() action: string = '';
  @Input() path: string = '';

  constructor(private player: HowlerPlayerService) {
    this.playSeek = 0;
  }

  clear(): void {

  }

  retry() {
  }

  init(): void {
  }

  ngOnInit(): void {
    this.init();
    this.player.init('repeatSentence', this.path, function () {
      console.log('end');
    });
    this.player.play();
  }

  ngOnDestroy() {
  }
}

