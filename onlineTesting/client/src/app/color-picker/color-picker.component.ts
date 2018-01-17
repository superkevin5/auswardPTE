import { Component, OnInit,Input  } from '@angular/core';

@Component({
  selector: 'app-color-picker',
  templateUrl: './color-picker.component.html',
  styleUrls: ['./color-picker.component.scss']
})
export class ColorPickerComponent implements OnInit {

  @Input('themeColor') theme: string;
  constructor() {

  }

  ngOnInit() {

    console.log(this.theme);

  }

}
