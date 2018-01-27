/**
 * Created by Luming on 1/28/2018.
 */
import {Injectable} from '@angular/core';
import {Howl} from 'howler';
import {pteConstants} from '../../pteConstants';

@Injectable()
export class PlayerService {
  sound: any;

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

  play() {
    if (this.sound && this.sound.playing()) {
      this.sound.stop();
    }
    this.sound.play();
  }

  pause() {
    this.sound.pause();
  }

}

