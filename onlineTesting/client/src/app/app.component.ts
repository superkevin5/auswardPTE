import {Component, OnInit} from '@angular/core';
import {FormControl} from '@angular/forms';
import {pteConstants} from './pteConstants';
import {OverlayContainer} from '@angular/cdk/overlay';
import { Router,NavigationEnd } from '@angular/router';
import { SeoService } from './questions/common/seo.service';

declare var ga:Function;
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
  constructor(private overlayContainer: OverlayContainer,private _router: Router,private seoService: SeoService) {
    this.keys = Object.keys(pteConstants.testCategory);
    this.testsCategory = pteConstants.testCategory;
    this.overlayContainer = overlayContainer;
    this._router = _router;

    this._router.events.subscribe(event => {


      // Send GA tracking on NavigationEnd event. You may wish to add other
      // logic here too or change which event to work with
      if (event instanceof NavigationEnd) {
        // When the route is '/', location.path actually returns ''.
        let newRoute = this._router.url || '/';
        ga('send', 'pageview', newRoute);
      }
    });
    seoService.addSeoData()
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

