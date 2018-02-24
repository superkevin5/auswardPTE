/**
 * Created by Luming on 1/28/2018.
 */
import {Injectable} from '@angular/core';
declare const navigator: any;
declare const MediaRecorder: any;
import {PlayerService} from './player.service';


@Injectable()
export class RecorderService {
  public isRecording: boolean = false;
  private chunks: any = [];
  private mediaRecorder: any;
  private audio = new Audio();

  constructor(private player: PlayerService,) {

  }

  public init() {
    this.isRecording = false;
    this.chunks = [];
    this.stopCurrentRecordPlay();
  }

  public stopCurrentRecordPlay(){
    if (this.audio && this.audio.duration > 0) {
      this.audio.pause();
      this.audio.currentTime = 0;
    }

  }

  public playRecord() {
    if (this.isRecording) {
      this.mediaRecorder.stop();
      this.isRecording = false;
    }
    if (this.audio && !this.audio.paused && this.audio.currentTime > 0) {
      this.audio.pause();
    } else if (this.audio.paused && this.audio.currentTime > 0 && !this.audio.ended) {
      this.audio.play();
    } else {
      console.log(this.chunks);
      const blob = new Blob(this.chunks, {'type': 'audio/wav; codecs=opus'});
      this.audio.src = window.URL.createObjectURL(blob);
      this.audio.load();
      this.audio.play();
    }
  }

  public record() {
    this.chunks = [];
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
    navigator.getUserMedia({audio: true}, onSuccess, e => console.log(e));
  }

  public stop() {
    this.isRecording = false;
    this.mediaRecorder.stop();
  }

}

