/**
 * Created by Luming on 1/28/2018.
 */
import {Injectable, OnInit} from '@angular/core';

import {pteConstants} from '../../pteConstants';

@Injectable()
export class CommonService implements OnInit {

  constructor() {

  }

  shuffleArray(array:Array<any>){
    for (let i = array.length - 1; i > 0; i--) {
      let j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
  }

  ngOnInit(): void {
  }

}

