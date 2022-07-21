import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HakishaKYCFirebaseUser {
  HakishaKYCFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HakishaKYCFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HakishaKYCFirebaseUser> hakishaKYCFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HakishaKYCFirebaseUser>(
            (user) => currentUser = HakishaKYCFirebaseUser(user));
