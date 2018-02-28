import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ReadAloudComponent } from './readAloud/readAloud.component';
import { ReadFillInBlankComponent } from './readFillInTheBlank/readFillInBlank.component';
import { ListenFillInBlankComponent } from './listenFillInTheBlank/listenFillInBlank.component';
import { ReadReorderParagraphComponent } from './readReorderParagraph/readReorderParagraph.component';
import { WriteEssayComponent } from './writeEssay/writeEssay.component';
import { RepeatSentenceComponent } from './repeatSentence/repeatSentence.component';
import { RetellLectureComponent } from './retellLecture/retellLecture.component';
import { HighLightIncorrectWordsComponent } from './highlightIncorrect/hightLightIncorrectWords.component';

const routes: Routes = [
  { path: '', redirectTo: 'read-aloud', pathMatch: 'full'  },
  { path: 'read-aloud', component: ReadAloudComponent },
  { path: 'read-fill-in-the-blank', component: ReadFillInBlankComponent },
  { path: 'listen-fill-in-the-blank', component: ListenFillInBlankComponent },
  { path: 'read-reorder-paragraph', component: ReadReorderParagraphComponent },
  { path: 'high-light-incorrect-words', component: HighLightIncorrectWordsComponent },
  { path: 'write-essay', component: WriteEssayComponent },
  { path: 'repeat-sentence', component: RepeatSentenceComponent },
  { path: 'retell-lecture', component: RetellLectureComponent }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
