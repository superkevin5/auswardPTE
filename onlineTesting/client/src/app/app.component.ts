import {Component} from '@angular/core';
import {FormControl} from '@angular/forms';

/** @title Sidenav with configurable mode */
@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  mode = new FormControl('side');
  constructor() {
    console.log(this.mode);
  }
}

