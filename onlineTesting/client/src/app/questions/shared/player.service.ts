/**
 * Created by Luming on 1/28/2018.
 */
import {Injectable, OnInit} from '@angular/core';
import {Howl} from 'howler';
import {pteConstants} from '../../pteConstants';
import {RecorderService} from './recorder.service';


@Injectable()
export class PlayerService implements OnInit {
  soundMale: any;
  soundFemale: any;
  beepSound: any;


  constructor() {

  }

  init(audioType, path1, path2) {
    let audioPathMale = pteConstants.audioPathMap[audioType] + path1;
    let audioPathFemale = pteConstants.audioPathMap[audioType] + path2;

    if (this.soundMale) {
      this.soundMale.unload();
    }
    this.soundMale = new Howl({
      src: [audioPathMale]
    });

    if (this.soundFemale) {
      this.soundFemale.unload();
    }
    this.soundFemale = new Howl({
      src: [audioPathFemale]
    });
  }

  stop() {
    this.soundMale.stop();
    this.soundFemale.stop();
  }

  playBeep() {
    if (this.beepSound) {
      this.beepSound.unload();
    }
    this.beepSound = new Howl({
      src: ["./assets/beep.mp3"]
    });
    this.beepSound.play();
  }


  playMale() {
    if (this.soundMale && this.soundMale.playing()) {
      this.soundMale.pause();
    } else {
      this.soundMale.play();
    }
  }


  playFemale() {
    if (this.soundFemale && this.soundFemale.playing()) {
      this.soundFemale.pause();
    } else {
      this.soundFemale.play();
    }
  }

  pause() {
    this.soundFemale.pause();
    this.soundMale.pause();
  }

  ngOnInit(): void {

    if (this.beepSound) {
      this.beepSound.unload();
    }
    this.beepSound = new Howl({
      src: ["beep.mp3"]
    });

  }

}

