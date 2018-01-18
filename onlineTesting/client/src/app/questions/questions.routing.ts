import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ReadAloudComponent } from './readAloud/readAloud.component';
import { HighLightIncorrectWordsComponent } from './highlightIncorrect/hightLightIncorrectWords.component';

const routes: Routes = [
  { path: '', redirectTo: 'read-aloud', pathMatch: 'full'  },
  { path: 'read-aloud', name:'read-aloud',component: ReadAloudComponent },
  { path: 'high-light-incorrect-words',name:'highlight', component: HighLightIncorrectWordsComponent }
];

export const routing: ModuleWithProviders = RouterModule.forChild(routes);
