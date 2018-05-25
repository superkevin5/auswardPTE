import {Component, OnInit, AfterContentInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {CommonService} from '../common/common.service';
import {FormControl} from '@angular/forms';
import {Observable} from 'rxjs';
import 'rxjs/add/operator/mergeMap';
import * as _ from "lodash";
import {routerTransition} from '../../animation/animation';
import {DropEvent, DragEvent} from 'ng-drag-drop';
@Component({
  selector: 'read-fill-in-the-blank-2',
  templateUrl: 'readFillInBlank2.component.html',
  styleUrls: ['readFillInBlank2.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class ReadFillInBlankComponent2 implements OnInit,AfterContentInit {

  allReadFillInTheBlank2Ids: any = new Array();

  selectedFillInTheBlank: any = {};
  currentIndex: number = 0;
  isLoading: boolean = false;
  isAnswer: boolean = false;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  isList1Drag: boolean = false;
  isOptionDrag: boolean = false;

  constructor(private httpService: PteHttpService, private commonService: CommonService) {


  }

  goto(pageNumber) {
    this.toggleAnswer(false);
    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.allReadFillInTheBlank2Ids.length) {
      console.log('invalid');
      return;
    }

    if (pageNumber <= this.allReadFillInTheBlank2Ids.length) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanks2ById(this.allReadFillInTheBlank2Ids[pageNumber - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex = pageNumber - 1;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  next() {
    this.toggleAnswer(false);
    if (this.currentIndex < this.allReadFillInTheBlank2Ids.length - 1) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanks2ById(this.allReadFillInTheBlank2Ids[this.currentIndex + 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex++;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  previous() {
    this.toggleAnswer(false);
    if (this.currentIndex > 0) {
      this.isLoading = true;
      this.httpService.getReadFillInTheBlanks2ById(this.allReadFillInTheBlank2Ids[this.currentIndex - 1]).subscribe(
        data => {
          this.processQuestions(data.body);
          this.currentIndex--;
        }, error=> {

        }, ()=> {
          this.isLoading = false;
        });
    }
  }

  toggleAnswer(a: boolean): void {
    this.isAnswer = a;
  }

  shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
      let j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }

  processQuestions(question): void {
    this.selectedFillInTheBlank = question;
    let descriptionInArrayMode = this.selectedFillInTheBlank.description.split(/[\s]+/);
    this.selectedFillInTheBlank._descriptionInArrayMode = [];
    this.selectedFillInTheBlank._answer = this.selectedFillInTheBlank.answer.trim().replace(/\$/g, '').split('|');
    this.selectedFillInTheBlank._options = this.selectedFillInTheBlank.options.trim().replace(/\$/g, '').split('|');
    let answer = _.cloneDeep(this.selectedFillInTheBlank._answer);
    let options = _.cloneDeep(this.selectedFillInTheBlank._options);
    for (let word of descriptionInArrayMode) {
      if (word.trim().toLowerCase() == '#404') {
        let thisAnswer = answer.shift();
        this.selectedFillInTheBlank._descriptionInArrayMode.push({text: word, answer: thisAnswer, selectedOption: ""});
      } else {
        this.selectedFillInTheBlank._descriptionInArrayMode.push({text: word});
      }
    }
    window["ga"]('send', {
      hitType: 'event',
      eventCategory: 'read-fill-in-the-blank2',
      eventAction: `Question:${ question.id} visited`
    });
  }

  onList1Drag(e: DragEvent, index) {
    this.isList1Drag = true;
    this.isOptionDrag = false;
  }
  onList1DragEnd(){
    this.isList1Drag = false;
  }
  onList1Drop(e: DropEvent, index) {
    let dragData = e.dragData;
    var dropData = this.selectedFillInTheBlank._descriptionInArrayMode[index].selectedOption;
    if (this.isList1Drag) {
      for (let i = 0, length = this.selectedFillInTheBlank._descriptionInArrayMode.length; i < length; i++) {
        if (this.selectedFillInTheBlank._descriptionInArrayMode[i].selectedOption === dragData) {
          this.selectedFillInTheBlank._descriptionInArrayMode[i].selectedOption = dropData;
          break;
        }
      }
      this.selectedFillInTheBlank._descriptionInArrayMode[index].selectedOption = dragData;
      this.isList1Drag = false;
    } else if(this.isOptionDrag) {
      var index2 = this.selectedFillInTheBlank._options.indexOf(dragData);
      if (~index2) {
        this.selectedFillInTheBlank._options[index2] = dropData;
        this.selectedFillInTheBlank._descriptionInArrayMode[index].selectedOption = dragData;
      }
    }
  }
  onOptionDrag() {
    this.isList1Drag = false;
    this.isOptionDrag = true;
  }

  onOptionDragEnd() {
    this.isOptionDrag = false;
  }

  onOptionsDrop(e: DropEvent, option, index) {
    var dragData = e.dragData;
    var dropData = this.selectedFillInTheBlank._options[index];

    if (this.isList1Drag) {
      for (let i = 0, length = this.selectedFillInTheBlank._descriptionInArrayMode.length; i < length; i++) {
        if (this.selectedFillInTheBlank._descriptionInArrayMode[i].selectedOption === dragData) {
          this.selectedFillInTheBlank._descriptionInArrayMode[i].selectedOption = dropData;
          break;
        }
      }
      this.selectedFillInTheBlank._options[index] = dragData;
    } else if (this.isOptionDrag) {
      var dragDataIndex = this.selectedFillInTheBlank._options.indexOf(dragData);
      this.selectedFillInTheBlank._options[dragDataIndex] = this.selectedFillInTheBlank._options[index];
      this.selectedFillInTheBlank._options[index] = dragData
    }
  }

  ngAfterContentInit(): void {
    this.isLoading = true;
    this.httpService.getAllReadFillInTheBlanks2Ids().flatMap((data)=> {

      if (data.body && data.body.length > 0) {
        this.allReadFillInTheBlank2Ids = data.body;
        this.currentIndex = 0;
        return this.httpService.getReadFillInTheBlanks2ById(this.allReadFillInTheBlank2Ids[0]);
      }
      else {
        return Observable.of({body: '1'});
      }
    })
      .subscribe(
        data => {
          this.processQuestions(data.body);
        },
        error=> {

        },
        ()=> {
          this.isLoading = false;
        }
      );

  }

  ngOnInit(): void {

  }
}

