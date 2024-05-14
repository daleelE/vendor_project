import '../../../../../../exports.dart';
import 'screens/desktop_screen.dart';
import 'screens/mobile_screen.dart';
import 'screens/tablet_screen.dart';

class SignInLayout extends StatelessWidget {
  const SignInLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: const SafeArea(
        child: AdaptiveLayoutWidget(
          mobileLayout: MobileScreen(),
          tabletLayout: TabletScreen(),
          desktopLayout: DesktopScreen(),
        ),
      ),
    );
  }
}
