import {Component, OnInit} from '@angular/core';

@Component({
  selector: 'high-light-incorrect-words',
  templateUrl: 'hightLightIncorrectWords.component.html',
  styleUrls: ['highLightIncorrectWords.component.scss'],
})
export class HighLightIncorrectWordsComponent implements OnInit{

  constructor() {
    console.log('incorrrect');
  }

  ngOnInit(): void {
    // this.overlayContainer.themeClass = this.pte_theme;
    console.log('incorrrect ');
  }

}

