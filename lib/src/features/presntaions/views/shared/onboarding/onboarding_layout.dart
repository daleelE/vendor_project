
import '../../../../../../exports.dart';
import 'screens/desktop_screen.dart';
import 'screens/mobile_screen.dart';
import 'screens/tablet_screen.dart';

class OnboardingLayout extends StatelessWidget {
  const OnboardingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: const AdaptiveLayoutWidget(
      mobileLayout: MobileScreen(), 
      tabletLayout: TabletScreen(), 
      desktopLayout: DesktopScreen(),
      ),
    );
  }
}