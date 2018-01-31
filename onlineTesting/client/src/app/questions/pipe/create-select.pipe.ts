import {Pipe, PipeTransform} from '@angular/core';
import {DomSanitizer} from "@angular/platform-browser";
@Pipe({
  name: 'createSelect'
})
export class CreateSelectPipe implements PipeTransform {
  constructor(private _sanitizer: DomSanitizer) {
  }

  transform(value: any, args?: any): any {

    if (value == '#404') {
      return this._sanitizer.bypassSecurityTrustHtml(`
      <mat-form-field>
      <mat-select placeholder="Choose answer" [(ngModel)]="selectedValue" name="food">
        <mat-option *ngFor="let food of selectedFillInTheBlank?._answer">
          {{food}}
        </mat-option>
      </mat-select>
      </mat-form-field>
`);
    }
    else {
      return value + " ";
    }
  }
}
