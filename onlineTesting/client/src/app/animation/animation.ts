/**
 * Created by kevinhu on 3/16/18.
 */
import {trigger, state, animate, style, transition} from '@angular/core';

export function routerTransition() {
  return slideToLeft();
}

export function slideToLeft() {
  return trigger('routerTransition', [
    state('void', style({position:'absolute', width:'100%'}) ),
    state('*', style({position:'absolute', width:'100%'}) ),
    transition(':enter', [  // before 2.1: transition('void => *', [
      style({transform: 'translateX(100%)'}),
      animate('0.5s ease-in-out', style({transform: 'translateX(0%)'}))
    ]),
    transition(':leave', [  // before 2.1: transition('* => void', [
      style({transform: 'translateX(0%)'}),
      animate('0.5s ease-in-out', style({transform: 'translateX(-100%)'}))
    ])
  ]);
}
