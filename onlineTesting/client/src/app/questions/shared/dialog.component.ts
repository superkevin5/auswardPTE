import {Component, Inject} from '@angular/core';
import {MatDialog, MatDialogRef, MAT_DIALOG_DATA} from '@angular/material';

@Component({
  selector: 'pte-dialog',
  templateUrl: 'dialog.html',
})
export class Dialog {

  constructor(@Inject(MAT_DIALOG_DATA) public data: any) {
  }

  onNoClick(): void {
    // this.dialogRef.close();
  }

}
