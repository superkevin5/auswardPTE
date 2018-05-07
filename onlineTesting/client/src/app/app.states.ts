/**
 * Created by Luming on 5/6/2018.
 */
import { User } from './model/user';

export interface AppState {
  userState: UserState;
}

export interface UserState {
  users: User[];
}
