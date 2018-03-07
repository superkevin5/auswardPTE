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

  getAllRepeatSentences() {
    let apiURL = `${this.apiRoot}/getAllRepeatSentence`;
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

  getAllListenFillInTheBlanksIds(): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllListenFillBlankIds`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getListenFillInTheBlanksById(id: number): Observable<any> {
    let apiURL = `${this.apiRoot}/getListenFillBlankById/${id}`;
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


  getAllWriteEssayIds(): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllWriteEssayIds`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getWriteEssayById(id: number): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllWriteEssayById/${id}`;
    return this.http.get(apiURL, {observe: 'response'});
  }


  getAllRetellLectureIds(): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllRetellLectureIds`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getRetellLectureById(id:number): Observable<any> {
    let apiURL = `${this.apiRoot}/getRetellLectureById/${id}`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getAllAnswerShortQuestions() {
    let apiURL = `${this.apiRoot}/getAllShortQuestions`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getAllDescribeImages() {
    let apiURL = `${this.apiRoot}/getAllDescribeImages`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getAllHighLightIncorrectWordsIds(): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllHighLightIncorrectWordsIds`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getHighLightIncorrectWordById(id: number): Observable<any> {
    let apiURL = `${this.apiRoot}/getHighLightIncorrectWordsById/${id}`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getAllSummariseWrittenTextIds(): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllSummariseWrittenTextIds`;
    return this.http.get(apiURL, {observe: 'response'});
  }

  getAllSummariseWrittenTextById(id: number): Observable<any> {
    let apiURL = `${this.apiRoot}/getAllSummariseWrittenTextById/${id}`;
    return this.http.get(apiURL, {observe: 'response'});
  }


}
