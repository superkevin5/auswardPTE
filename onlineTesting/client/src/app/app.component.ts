import {Component, OnInit} from '@angular/core';
import {FormControl} from '@angular/forms';
import {pteConstants} from './pteConstants';
import {OverlayContainer} from '@angular/cdk/overlay';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent implements OnInit {
  mode = new FormControl('side');
  keys: any[] = new Array();
  testsCategory: any = new Array();
  themeColor = 'pte-theme1';

  constructor(private overlayContainer: OverlayContainer) {
    this.keys = Object.keys(pteConstants.testCategory);
    this.testsCategory = pteConstants.testCategory;
    this.overlayContainer = overlayContainer;
  }

  ngOnInit(): void {
    // this.overlayContainer.themeClass = this.pte_theme;
  }

  onThemeNotify(message:string):void {
    console.log('notified',message);
    this.themeColor = message;
  }

}

