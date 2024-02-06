import 'package:get_it/get_it.dart';
import 'injection_container_iconfig.dart';
import 'package:injectable/injectable.dart';



final locator = GetIt.instance;


@InjectableInit()
Future<void> setupLocator()async{
  $initGetIt(locator);
}

