import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { routing } from './questions.routing';
import { HighLightIncorrectWordsComponent } from './highLightIncorrectWords/highLightIncorrectWords.component';
import { PteHttpService } from './pte-http.service';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { MaterialModule } from '../material/material.module';
import { FlexLayoutModule } from '@angular/flex-layout'
import { PlayerService } from './shared/player.service';
import { RecorderService } from './shared/recorder.service';
import {CommonService} from './common/common.service';
import { ReadAloudComponent } from './readAloud/readAloud.component';
import { DescribeImageComponent } from './describeImage/describeImage.component';
import { ReadReorderParagraphComponent } from './readReorderParagraph/readReorderParagraph.component';
import { SpeakAloudRecorderComponent } from './shared/speakaloudrecorder.component';
import { DescribeImageRecorderComponent } from './shared/describeimagerecorder.component';
import { RetellLectureComponent } from './retellLecture/retellLecture.component';
import { HowlerPlayerComponent } from './shared/howler.player.component';
import { PlayerComponent } from './shared/player.component';
import { ReadFillInBlankComponent } from './readFillInTheBlank/readFillInBlank.component';
import { ListenFillInBlankComponent } from './listenFillInTheBlank/listenFillInBlank.component';
import { WriteEssayComponent } from './writeEssay/writeEssay.component';
import { RepeatSentenceComponent } from './repeatSentence/repeatSentence.component';
import { AnswerShortQuestionComponent } from './answerShortQuestion/answerShortQuestion.component';
import { CreateSelectPipe } from './pipe/create-select.pipe';
import { NgDragDropModule } from 'ng-drag-drop';
import { HowlerPlayerService } from './shared/howler.player';
import { Dialog } from './shared/dialog.component';

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
  providers:[PteHttpService,PlayerService,RecorderService,CommonService,HowlerPlayerService],
  entryComponents: [
    Dialog
  ],
  declarations: [
    Dialog,
    ReadAloudComponent,
    SpeakAloudRecorderComponent,
    PlayerComponent,
    ReadFillInBlankComponent,
    ListenFillInBlankComponent,
    HighLightIncorrectWordsComponent,
    ReadReorderParagraphComponent,
    RetellLectureComponent,
    WriteEssayComponent,
    RepeatSentenceComponent,
    AnswerShortQuestionComponent,
    HowlerPlayerComponent,
    DescribeImageComponent,
    DescribeImageRecorderComponent,
    CreateSelectPipe
  ]
})
export class QuestionsModule { }
