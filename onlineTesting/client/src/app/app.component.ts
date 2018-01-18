import {Component, OnInit} from '@angular/core';
import {FormControl} from '@angular/forms';
import {pteConstants} from './pteConstants';
import {OverlayContainer} from '@angular/cdk/overlay';
import { Router } from '@angular/router';

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
  _router;
  constructor(private overlayContainer: OverlayContainer,private _router: Router) {
    this.keys = Object.keys(pteConstants.testCategory);
    this.testsCategory = pteConstants.testCategory;
    this.overlayContainer = overlayContainer;
    this._router = _router;
  }

  ngOnInit(): void {
    // this.overlayContainer.themeClass = this.pte_theme;
  }

  onThemeNotify(message:string):void {
    this.themeColor = message;
  }

  routing(path:string):void {
    this._router.navigate([path]);
  }

}

