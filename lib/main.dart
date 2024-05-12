import 'package:device_preview/device_preview.dart';


import 'exports.dart';
import 'init_main.dart';

void main() async {
  await initMain();
  
  initializeDateFormatting('en', null).then((_) => runApp(DevicePreview(
        enabled: kReleaseMode,
        builder: (context) => const VendorApp(),
      )));
}

bool kReleaseMode = false;

