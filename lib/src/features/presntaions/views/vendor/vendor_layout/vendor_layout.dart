import '../../../../../../exports.dart';
import 'screens/mobile_screen.dart';
import 'screens/tablet_screen.dart';

class VendorLayout extends StatelessWidget {
  const VendorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const AdaptiveLayoutWidget(
        mobileLayout: MobileScreen(),
        tabletLayout: TabletScreen(),
      );
  }
}
