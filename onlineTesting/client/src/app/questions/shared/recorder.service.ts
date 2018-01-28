/**
 * Created by Luming on 1/28/2018.
 */
import {Injectable} from '@angular/core';
import {Howl} from 'howler';
import {pteConstants} from '../../pteConstants';
declare const navigator: any;
declare const MediaRecorder: any;

@Injectable()
export class RecorderService {
  public isRecording: boolean = false;
  private chunks: any = [];
  private mediaRecorder: any;
  private audio = new Audio();

  constructor() {

  }

  public playRecord() {
    if (this.isRecording) {
      this.mediaRecorder.stop();
    }
    if (this.audio && this.audio.duration > 0) {
      this.audio.pause();
      this.audio.currentTime = 0;
    }

    const blob = new Blob(this.chunks, {'type': 'audio/ogg; codecs=opus'});
    this.audio.src = window.URL.createObjectURL(blob);
    this.audio.load();
    this.audio.play();
  }

  public record() {
    this.isRecording = true;
    navigator.getUserMedia = (navigator.getUserMedia ||
    navigator.webkitGetUserMedia ||
    navigator.mozGetUserMedia ||
    navigator.msGetUserMedia);

    const onSuccess = stream => {
      this.mediaRecorder = new MediaRecorder(stream);

      this.mediaRecorder.ondataavailable = e => {
        console.log('collecting data');
        this.chunks.length = 0;
        this.chunks.push(e.data)
      };
      this.mediaRecorder.start();
    };
    navigator.getUserMedia({audio: true}, onSuccess, e => console.log(e));
  }

  public stop() {
    this.isRecording = false;
    this.mediaRecorder.stop();
  }

}

