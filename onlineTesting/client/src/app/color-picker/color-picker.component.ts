import { Component, OnInit,Input,Output,EventEmitter } from '@angular/core';

@Component({
  selector: 'app-color-picker',
  templateUrl: './color-picker.component.html',
  styleUrls: ['./color-picker.component.scss']
})
export class ColorPickerComponent implements OnInit {

  @Input('themeColor') themeColor: string;

  @Output() notify: EventEmitter<string> = new EventEmitter<string>();

  constructor() {

  }

  ngOnInit() {
  }

  setTheme(theme:string) {
    this.themeColor = theme;
    this.notify.emit( this.themeColor);
  }
}
