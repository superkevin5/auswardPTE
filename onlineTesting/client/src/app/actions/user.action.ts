/**
 * Created by Luming on 5/6/2018.
 */
import { Action } from '@ngrx/store';
import { User } from '../model/user';

export const user1 = 'user1';
export const  user2 = 'user2';
export const  user3 = 'user3';

export class user1Action implements Action {
  readonly type = user1;
}

export class user2Action implements Action {
  readonly type = user2;
}

export class user3Action implements Action {
  readonly type = user3;

  constructor(public payload: User[]) {}
}

export type All = user1Action | user2Action | user3Action;
