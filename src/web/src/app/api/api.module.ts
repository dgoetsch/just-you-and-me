import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeService } from './home.service';



@NgModule({
  providers: [
    HomeService
  ],
  imports: [
    CommonModule
  ]
})
export class ApiModule { }
