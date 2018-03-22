import {Component, ViewChild, OnInit} from '@angular/core';
import {PteHttpService} from '../pte-http.service';
import {FormControl} from '@angular/forms';
import {PlayerService} from '../shared/player.service';
import {RecorderService} from '../shared/recorder.service';
import {DescribeImageRecorderComponent} from '../shared/describeimagerecorder.component';
import {pteConstants} from '../../pteConstants';
import { routerTransition } from '../../animation/animation';

@Component({
  selector: 'describe-image',
  templateUrl: 'describeImage.component.html',
  styleUrls: ['describeImage.component.scss'],
  animations: [routerTransition()],
  host: {'[@routerTransition]': ''}
})
export class DescribeImageComponent implements OnInit {
  describeImages: any = new Array();
  currentIndex: number = 0;
  pageFormControl = new FormControl();
  gotoNumber: any = '';
  isLoading:boolean = false;
  @ViewChild(DescribeImageRecorderComponent)
  private myChild: DescribeImageRecorderComponent;

  constructor(private  httpService: PteHttpService, private player: PlayerService, private recorder: RecorderService) {


  }

  goto(pageNumber) {

    if (!/^[1-9]$|^[1-9][0-9]+$/.test(pageNumber) || pageNumber > this.describeImages.length) {
      console.log('invalid');
      return;
    }

    this.currentIndex = pageNumber - 1;
    if (this.currentIndex < this.describeImages.length) {
      this.player.init('describeImage', this.describeImages[this.currentIndex].audioPath, this.describeImages[this.currentIndex].audioPath);
      this.myChild.init();
      window["ga"]('send', {
        hitType: 'event',
        eventCategory: 'describe-image',
        eventAction: `Question:${pageNumber} visited`
      });
    }
  }

  next() {
    if (this.currentIndex < this.describeImages.length - 1) {
      this.currentIndex++;
      this.player.init('describeImage', this.describeImages[this.currentIndex].audioPath, this.describeImages[this.currentIndex].audioPath);
      this.myChild.init();
      window["ga"]('send', {
        hitType: 'event',
        eventCategory: 'describe-image',
        eventAction: `Question:${this.currentIndex+1} visited`
      });
    }
  }

  previous() {
    if (this.currentIndex > 0) {
      this.currentIndex--;
      this.player.init('describeImage', this.describeImages[this.currentIndex].audioPath, this.describeImages[this.currentIndex].audioPath);
      this.myChild.init();
      window["ga"]('send', {
        hitType: 'event',
        eventCategory: 'describe-image',
        eventAction: `Question:${this.currentIndex+1} visited`
      });
    }
  }


  ngOnInit(): void {
    this.isLoading = false;
    this.httpService.getAllDescribeImages().subscribe(
      data => {
        this.describeImages = data.body;

        for (let describeImage of this.describeImages) {
          describeImage.imagePath = `${pteConstants.imagePath.describeImage}${ describeImage.imagePath}`;
        }


        if (this.describeImages.length > 0) {
          this.currentIndex = 0;
          this.player.init('describeImage', this.describeImages[this.currentIndex].audioPath, this.describeImages[this.currentIndex].audioPath);
        }

        for (let describeImage of  this.describeImages) {
          describeImage._action = 'preparation'
        }

      },
      error =>{

      },
      ()=>{
        this.isLoading = true;
      }
    );
  }
}

