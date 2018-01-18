import {Component, OnInit} from '@angular/core';

@Component({
  selector: 'read-aloud',
  templateUrl: 'readAloud.component.html',
  styleUrls: ['readAloud.component.scss'],
})
export class ReadAloudComponent implements OnInit{


  constructor() {

    console.log('11111111');
  }

  ngOnInit(): void {
    // this.overlayContainer.themeClass = this.pte_theme;
    console.log('111sss');
  }

}

