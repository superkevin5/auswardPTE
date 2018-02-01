import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ReadAloudComponent } from './readAloud/readAloud.component';
import { ReadFillInBlankComponent } from './readFillInTheBlank/readFillInBlank.component';
import { ReadReorderParagraphComponent } from './readReorderParagraph/readReorderParagraph.component';

import { HighLightIncorrectWordsComponent } from './highlightIncorrect/hightLightIncorrectWords.component';

const routes: Routes = [
  { path: '', redirectTo: 'read-aloud', pathMatch: 'full'  },
  { path: 'read-aloud', component: ReadAloudComponent },
  { path: 'read-fill-in-the-blank', component: ReadFillInBlankComponent },
  { path: 'read-reorder-paragraph', component: ReadReorderParagraphComponent },
  { path: 'high-light-incorrect-words', component: HighLightIncorrectWordsComponent }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
