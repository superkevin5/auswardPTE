import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { routing } from './questions.routing';
import { ReadAloudComponent } from './readAloud/readAloud.component';
import { HighLightIncorrectWordsComponent } from './highlightIncorrect/hightLightIncorrectWords.component';
import { PteHttpService } from './pte-http.service';


@NgModule({
  imports: [
    routing,
    CommonModule
  ],
  providers:[PteHttpService],
  declarations: [
    ReadAloudComponent,
    HighLightIncorrectWordsComponent
  ]
})
export class QuestionsModule { }
