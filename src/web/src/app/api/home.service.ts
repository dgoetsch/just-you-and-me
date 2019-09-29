import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HomeModel } from '../models/home.model';
import { HttpClient } from '@angular/common/http';

@Injectable()
export class HomeService {

  constructor(private http: HttpClient) { }

  home(type: string): Observable<HomeModel> {
    return this.http
      .get<HomeModel>(`/api/home/${type}`);
  }
}
