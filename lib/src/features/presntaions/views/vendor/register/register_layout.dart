import '../../../../../../exports.dart';
import 'screens/mobile_screen.dart';
import 'screens/tablet_screen.dart';

class RegisterVendorLayout extends StatefulWidget {
  const RegisterVendorLayout({super.key});

  @override
  State<RegisterVendorLayout> createState() => _RegisterVendorLayoutState();
}

class _RegisterVendorLayoutState extends State<RegisterVendorLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const AdaptiveLayoutWidget(
      mobileLayout: MobileScreen(),
      tabletLayout: TabletScreen(),
      desktopLayout: TabletScreen(),
    ),
    );
  }
}
