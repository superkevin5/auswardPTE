import {Pipe, PipeTransform} from '@angular/core';
import {DomSanitizer} from "@angular/platform-browser";
@Pipe({
  name: 'wordCounter'
})
export class WordCounterPipe implements PipeTransform {
  constructor(private _sanitizer: DomSanitizer) {
  }

  transform(value: any, args?: any): any {
    var regex = /\s+/gi;
    if (value == ' ' || !value) {
      return 0;
    }
    var wordCount = value.trim().replace(regex, ' ').split(' ').length;

    return wordCount;
  }
}
