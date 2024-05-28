import '../../../../../../../exports.dart';
import '../components/images_and_indicator_widget.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kEdgePadding,
      width: SizeConfig.screenWidth,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              PngIcons.logo,
              width: 100.rW,
            ),
            const ImagesAndIndicator(),
            AdaptiveFilledButtonWidget(
              label: 'Get Started',
              press: () => Routes.signIn.offPage(),
            ),
          ],
        ),
      ),
    );
  }
}
