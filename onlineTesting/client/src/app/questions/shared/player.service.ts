/**
 * Created by Luming on 1/28/2018.
 */
import {Injectable,OnInit} from '@angular/core';
import {Howl} from 'howler';
import {pteConstants} from '../../pteConstants';

@Injectable()
export class PlayerService implements OnInit{
  sound: any;
  beepSound:any;
  constructor() {

  }

  init(audioType, path) {
    let audioPath = pteConstants.audioPathMap[audioType] + path;
    if (this.sound) {
      this.sound.unload();
    }
    this.sound = new Howl({
      src: [audioPath]
    });
    return this.sound;
  }


  stop() {
    this.sound.stop();
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


  play() {
    if (this.sound && this.sound.playing()) {
      this.sound.pause();
    } else{
      this.sound.play();
    }
  }

  pause() {
    this.sound.pause();
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

