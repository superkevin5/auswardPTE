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

  constructor() {

  }

  public playRecord() {
    const audio = new Audio();
    const blob = new Blob(this.chunks, { 'type': 'audio/ogg; codecs=opus' });
    this.chunks.length = 0;
    audio.src = window.URL.createObjectURL(blob);
    audio.load();
    audio.play();
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
        this.chunks.push(e.data)
      };
      this.mediaRecorder.start();
    };
    navigator.getUserMedia({ audio: true }, onSuccess, e => console.log(e));
  }

  public stop() {
    this.isRecording = false;
    this.mediaRecorder.stop();
  }

}

