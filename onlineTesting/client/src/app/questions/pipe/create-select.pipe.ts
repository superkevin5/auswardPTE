import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'createSelect'
})
export class CreateSelectPipe implements PipeTransform {

  transform(value: any, args?: any): any {



   return `<mat-select >111</mat-select>`;
  }

}
