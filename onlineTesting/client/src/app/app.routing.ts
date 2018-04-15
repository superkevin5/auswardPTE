import {ModuleWithProviders} from '@angular/core';
import {Routes, RouterModule} from '@angular/router';
import {HomeComponent} from './home.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {
    path: 'questions', loadChildren: './questions/questions.module#QuestionsModule', data: {
    title: "PTE questions",
    metatags: {
      description: "PTE questions",
      keywords: "read-aloud"
    }
  }
  }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(routes, {useHash: false});
