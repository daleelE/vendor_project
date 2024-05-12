
import '../../../exports.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget? desktopLayout;
  const AdaptiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizeConfig.desktop) return desktopLayout!;
      if (constraints.maxWidth < SizeConfig.tablet) return tabletLayout;
      return mobileLayout;
    });
  }
}
 