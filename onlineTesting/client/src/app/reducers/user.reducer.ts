import { createFeatureSelector, createSelector } from '@ngrx/store';
import * as fromActions from '../actions/user.action';
import { UserState } from '../app.states';
import { user1 } from '../model/user';

export const initialState: UserState = { users: []};

export function reducer(state = initialState, action: fromActions.All): UserState {
  switch(action.type) {
    case fromActions.user1: {
      return {users: [user1]};
    }
    case fromActions.user2: {
      return {users: [{id:2,username:'11'}]};
    }
    case fromActions.user3: {
      return {users: [user1]};
    }
    default: {
      return state;
    }
  }
}

export const getUserState = createFeatureSelector<UserState>('userState');

export const getUsers = createSelector(
  getUserState,
  (state: UserState) => state.users
);
