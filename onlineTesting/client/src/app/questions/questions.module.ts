import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { routing } from './questions.routing';
import { HighLightIncorrectWordsComponent } from './highlightIncorrect/hightLightIncorrectWords.component';
import { PteHttpService } from './pte-http.service';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { MaterialModule } from '../material/material.module';
import { FlexLayoutModule } from '@angular/flex-layout'
import { PlayerService } from './shared/player.service';
import { RecorderService } from './shared/recorder.service';
import { ReadAloudComponent } from './readAloud/readAloud.component';
import { RecorderComponent } from './shared/recorder.component';
import { ReadFillInBlankComponent } from './readFillInTheBlank/readFillInBlank.component';
import { CreateSelectPipe } from './pipe/create-select.pipe';

@NgModule({
  imports: [
    routing,
    CommonModule,
    MaterialModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    FlexLayoutModule
  ],
  providers:[PteHttpService,PlayerService,RecorderService],
  declarations: [
    ReadAloudComponent,
    RecorderComponent,
    ReadFillInBlankComponent,
    HighLightIncorrectWordsComponent,
    CreateSelectPipe
  ]
})
export class QuestionsModule { }
