import 'package:lottie/lottie.dart';

import '../../../../../../exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool loading = false;
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    setState(() {
      loading = true;
    });
    await Future.delayed(const Duration(seconds: 6));
    setState(() {
      loading = false;
      Routes.onboarding.offPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          imageWidget(),
          if (loading) Lottie.asset(JsonIcons.splashLoading, width: 120.rW),
        ],
      ),
    );
  }

  Positioned imageWidget() {
    return Positioned.fill(
      child: Image.asset(
        AppImages.splashEn,
        filterQuality: FilterQuality.high,
        fit: BoxFit.fill,
      ),
    );
  }
}
