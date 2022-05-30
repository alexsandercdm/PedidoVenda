import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MyFirstProjectFirebaseUser {
  MyFirstProjectFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MyFirstProjectFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MyFirstProjectFirebaseUser> myFirstProjectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MyFirstProjectFirebaseUser>(
            (user) => currentUser = MyFirstProjectFirebaseUser(user));
