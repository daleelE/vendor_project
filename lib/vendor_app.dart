import 'package:device_preview/device_preview.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'exports.dart';
import 'src/core/routing/app_router.dart';
import 'src/core/theme/theme_service.dart';

class VendorApp extends StatefulWidget {
  const VendorApp({super.key});

  @override
  State<VendorApp> createState() => _VendorAppState();
}

class _VendorAppState extends State<VendorApp> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MultiBlocProvider(
      providers: BlocProviders.all,
      child: GetMaterialApp(
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        debugShowCheckedModeBanner: false,
        theme: ThemeService.lightTheme(context),
        darkTheme: ThemeService.darkTheme(context),
        themeMode: ThemeMode.dark,
        getPages: AppRouter.getPages,
        initialRoute: Routes.splash,
      ),
    );
  }
}
