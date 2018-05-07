import {Component} from '@angular/core';
import * as userReducer from './reducers/user.reducer';
import * as fromActions from './actions/user.action';
import {User} from './model/user';
import {UserState} from './app.states';
import {Store} from '@ngrx/store';

@Component({
  selector: 'app-home',
  templateUrl: 'home.component.html'
})
export class HomeComponent {
  users: Observable<User[]>;

  constructor(private store: Store<UserState>) {
    this.users = store.select(userReducer.getUsers);
  }

  showUser1() {
    this.store.dispatch(new fromActions.user1Action());
  }

  showUser2() {
    this.store.dispatch(new fromActions.user2Action());
  }

  showUser3() {
    this.store.dispatch(new fromActions.user3Action([{id: 1, username: 'sss'}]));
  }
}

