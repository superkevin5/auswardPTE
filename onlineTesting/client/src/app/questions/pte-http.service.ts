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

  search(term: string) {
    let apiURL = `${this.apiRoot}?term=${term}&media=music&limit=20`;
    return this.http.get(apiURL,{ observe: 'response' });
  }

  getAllReadAloud(){
    let apiURL = `${this.apiRoot}/getAllReadAloud`;
    return this.http.get(apiURL,{ observe: 'response' });
  }


}
