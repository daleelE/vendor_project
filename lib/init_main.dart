
import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'exports.dart';
import 'src/core/bloc/bloc_observer.dart';
import 'src/core/network/locale/shared_pref.dart';
import 'src/core/network/remote/firebase_options.dart';



Future<void> initMain() async {
  final widgetsBinding =  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseMessaging.instance.getInitialMessage();
  await SharedPref.init();
  FirebaseMessaging.onBackgroundMessage(_myBackgroundMessageHandler);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = MyBlocObserver();
  await setupLocator();
}


Future<dynamic> _myBackgroundMessageHandler(RemoteMessage message) async {
  log('onBackground : ${message.notification?.title}/${message.notification?.body}/${message.notification?.titleLocKey}/');
}
