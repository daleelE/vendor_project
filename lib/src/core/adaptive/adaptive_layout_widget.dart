
import '../../../exports.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;
  const AdaptiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizeConfig.mobile) return mobileLayout;
      if (constraints.maxWidth < SizeConfig.tablet) return tabletLayout;
      return desktopLayout;
    });
  }
}
 