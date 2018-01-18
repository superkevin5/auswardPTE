import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: 'eager', pathMatch: 'full' },
  { path: 'questions',  loadChildren: './questions/questions.module#QuestionsModule' }
];

export const routing: ModuleWithProviders = RouterModule.forRoot(routes);
