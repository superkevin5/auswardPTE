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
import {CommonService} from './common/common.service';
import { ReadAloudComponent } from './readAloud/readAloud.component';
import { ReadReorderParagraphComponent } from './readReorderParagraph/readReorderParagraph.component';
import { RecorderComponent } from './shared/recorder.component';
import { ReadFillInBlankComponent } from './readFillInTheBlank/readFillInBlank.component';
import { CreateSelectPipe } from './pipe/create-select.pipe';
import { NgDragDropModule } from 'ng-drag-drop';

@NgModule({
  imports: [
    routing,
    CommonModule,
    MaterialModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
    FlexLayoutModule,
    NgDragDropModule.forRoot()
  ],
  providers:[PteHttpService,PlayerService,RecorderService,CommonService],
  declarations: [
    ReadAloudComponent,
    RecorderComponent,
    ReadFillInBlankComponent,
    HighLightIncorrectWordsComponent,
    ReadReorderParagraphComponent,
    CreateSelectPipe
  ]
})
export class QuestionsModule { }
