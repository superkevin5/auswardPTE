import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { routing } from './questions.routing';
import { ReadAloudComponent } from './readAloud/readAloud.component';
import { HighLightIncorrectWordsComponent } from './highlightIncorrect/hightLightIncorrectWords.component';


@NgModule({
  imports: [
    routing,
    CommonModule
  ],
  declarations: [
    ReadAloudComponent,
    HighLightIncorrectWordsComponent
  ]
})
export class QuestionsModule { }
