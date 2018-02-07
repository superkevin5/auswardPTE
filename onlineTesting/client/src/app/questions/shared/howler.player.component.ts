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

  constructor(private player: HowlerPlayerService) {

  }

  clear(): void {

  }

  retry() {
  }

  init(): void {

  }

  ngOnInit(): void {
    this.init();
  }

  ngOnDestroy() {

  }
}

