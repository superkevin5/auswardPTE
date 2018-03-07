import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ReadAloudComponent } from './readAloud/readAloud.component';
import { ReadFillInBlankComponent } from './readFillInTheBlank/readFillInBlank.component';
import { ListenFillInBlankComponent } from './listenFillInTheBlank/listenFillInBlank.component';
import { ReadReorderParagraphComponent } from './readReorderParagraph/readReorderParagraph.component';
import { WriteEssayComponent } from './writeEssay/writeEssay.component';
import { RepeatSentenceComponent } from './repeatSentence/repeatSentence.component';
import { RetellLectureComponent } from './retellLecture/retellLecture.component';
import { AnswerShortQuestionComponent } from './answerShortQuestion/answerShortQuestion.component';
import { DescribeImageComponent } from './describeImage/describeImage.component';
import { HighLightIncorrectWordsComponent } from './highLightIncorrectWords/highLightIncorrectWords.component';
import { SummariseWrittenTextComponent } from './summariseWrittenText/summariseWrittenText.component';


const routes: Routes = [
  { path: '', redirectTo: 'read-aloud', pathMatch: 'full'  },
  { path: 'read-aloud', component: ReadAloudComponent },
  { path: 'read-fill-in-the-blank', component: ReadFillInBlankComponent },
  { path: 'listen-fill-in-the-blank', component: ListenFillInBlankComponent },
  { path: 'read-reorder-paragraph', component: ReadReorderParagraphComponent },
  { path: 'high-light-incorrect-words', component: HighLightIncorrectWordsComponent },
  { path: 'write-essay', component: WriteEssayComponent },
  { path: 'repeat-sentence', component: RepeatSentenceComponent },
  { path: 'retell-lecture', component: RetellLectureComponent },
  { path: 'short-question', component: AnswerShortQuestionComponent },
  { path: 'describe-image', component: DescribeImageComponent },
  { path: 'summarise-written-text', component: SummariseWrittenTextComponent }


];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
