import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import { MaterialModule } from './material/material.module';
import { CommonModule } from '@angular/common';
import { AppComponent } from './app.component';
import { ColorPickerComponent } from './color-picker/color-picker.component';
import { routing } from './app.routing';
import { FlexLayoutModule } from '@angular/flex-layout'
import { ServiceWorkerModule } from '@angular/service-worker';
import { environment } from '../environments/environment';
import { HomeComponent } from './home.component';
import { SeoService } from './questions/common/seo.service';

@NgModule({
  declarations: [
    AppComponent,
    ColorPickerComponent,
    HomeComponent
  ],
  imports: [
    routing,
    BrowserModule,
    BrowserAnimationsModule,
    MaterialModule,
    CommonModule,
    FlexLayoutModule,
    ServiceWorkerModule.register('/ngsw-worker.js', {enabled: environment.production})
  ],
  providers: [SeoService],
  bootstrap: [AppComponent]
})
export class AppModule { }
