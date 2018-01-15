import {Component} from '@angular/core';
import {FormControl} from '@angular/forms';
import {pteConstants} from './pteConstants';
/** @title Sidenav with configurable mode */
@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  mode = new FormControl('side');
  keys:any[]=  new Array();
  constructor() {
    this.keys = Object.keys(pteConstants.testCategory);
    this.testsCategory = pteConstants.testCategory;
  }
}

