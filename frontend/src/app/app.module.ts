import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { InsertComponent } from './insert/insert.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { UpdateComponent } from './update/update.component';
import { ProductlistComponent } from './productlist/productlist.component';
import { AppService } from './aap.service';
import { RadioComponent } from './radio/radio.component';
import { CheckBoxComponent } from './check-box/check-box.component';


@NgModule({
  declarations: [
    AppComponent,
    InsertComponent,
    UpdateComponent,
    ProductlistComponent,
    RadioComponent,
    CheckBoxComponent
  
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [AppService],
  bootstrap: [AppComponent]
})

export class AppModule { }
