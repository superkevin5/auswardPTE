import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { routing } from './questions.routing';
import { ReadAloudComponent } from './readAloud/readAloud.component';
import { HighLightIncorrectWordsComponent } from './highlightIncorrect/hightLightIncorrectWords.component';
import { PteHttpService } from './pte-http.service';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { MaterialModule } from '../material/material.module';
import {NgxPaginationModule} from 'ngx-pagination';


@NgModule({
  imports: [
    routing,
    CommonModule,
    MaterialModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    NgxPaginationModule
  ],
  providers:[PteHttpService],
  declarations: [
    ReadAloudComponent,
    HighLightIncorrectWordsComponent
  ]
})
export class QuestionsModule { }
