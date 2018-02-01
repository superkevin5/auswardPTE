import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {pteConstants} from '../pteConstants';
import {Observable} from 'rxjs';
@Injectable()
export class PteHttpService {

  apiRoot: string = '';

  constructor(private http: HttpClient) {
    this.apiRoot = pteConstants.apiRoot;
  }

  getAllReadAloud() {
    let apiURL = `${this.apiRoot}/getAllReadAloud`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getAllReadFillInTheBlanksIds(): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllReadingFillBlankIds`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getReadFillInTheBlanksById(id: number): Observable<any> {
    let apiURL = `${this.apiRoot}/getReadingFillById/${id}`;
    return this.http.get(apiURL, {observe: 'response'});
  }


  getAllReadReorderParagraphIds(): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllReadReorderParagraphIds`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getReadReorderParagraphById(id: number): Observable<any> {
    let apiURL = `${this.apiRoot}/getReadReorderParagraphById/${id}`;
    return this.http.get(apiURL, {observe: 'response'});
  }


}
