/**
 * Created by Luming on 1/28/2018.
 */
import {Injectable, OnInit} from '@angular/core';
import {Howl} from 'howler';
import {pteConstants} from '../../pteConstants';

@Injectable()
export class HowlerPlayerService implements OnInit {
  sound: any;

  constructor() {

  }


  init(audioType, path1, onendCallback) {

    let audioPathMale = pteConstants.audioPathMap[audioType] + path1;
    if (this.sound) {
      this.sound.unload();
    }
    this.sound = new Howl({
      src: [audioPathMale],
      onend:onendCallback
    });

    // this.sound.onend(onendCallback);
  }

  isPlaying() {
    return this.sound.playing();
  }

  play() {
    if (this.sound && this.sound.playing()) {
      this.sound.pause();
    } else {
      this.sound.play();
    }
  }

  pause() {
    this.sound.pause();
  }

  seek(numb) {
    this.sound.seek(numb);
  }

  stop() {
    this.sound.stop();
  }

  getDuration() {
    return this.sound.duration();
  }

  ngOnInit(): void {

  }
}
