

import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class InternetCheck {
  Future<bool> get isConnected;
}


class InternetConnection implements InternetCheck {
  final InternetConnectionChecker connectivity;

  InternetConnection(this.connectivity);

  @override
  Future<bool> get isConnected => connectivity.hasConnection;

}