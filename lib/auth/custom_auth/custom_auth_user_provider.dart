import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class HhmsAuthUser {
  HhmsAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<HhmsAuthUser> hhmsAuthUserSubject =
    BehaviorSubject.seeded(HhmsAuthUser(loggedIn: false));
Stream<HhmsAuthUser> hhmsAuthUserStream() =>
    hhmsAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
