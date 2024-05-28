
import 'exports.dart';
import 'init_main.dart';

void main() async {
  await initMain();
  initializeDateFormatting('en', null).then((_) => runApp(const VendorApp()));
}

bool kReleaseMode = true;


