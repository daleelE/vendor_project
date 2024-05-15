import 'package:get/get.dart';

import '../../../../../../../exports.dart';
import '../components/vendor_appbar_layout.dart';
import '../components/vendor_bottom_nav.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  GlobalKey<NavigatorState> homeNavKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> messageNavKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> myAccountNavKey = GlobalKey<NavigatorState>();
  ValueNotifier<int> selectedIndex = ValueNotifier(0);
  List<NavModel> pages = [];

  @override
  void initState() {
    super.initState();
    pages = _getPages;
  }

  @override
  Widget build(BuildContext context) {
    return Animated3dDrawer(
      menu: const SideMenu(),
      mainScreen: PopScope(
        canPop: _getCanPop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: vendorLayoutAppbar(context),
          body: ValueListenableBuilder(
              valueListenable: selectedIndex,
              builder: (context, value, _) {
                return _buildPages(value);
              }),
        ),
      ),
      bottomNav: ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (context, value, _) {
            return VendorBottomNav(
              selectedIndex: selectedIndex.value,
              page: pages[value],
              onChanged: (index) => selectedIndex.value = index,
            );
          }),
    );
  }

  _buildPages(int value) {
    return IndexedStack(
      index: value,
      children: pages
          .map((page) => Navigator(
                key: page.navKey,
                onGenerateInitialRoutes: (navigator, initialRoute) {
                  return [MaterialPageRoute(builder: (context) => page.page)];
                },
              ))
          .toList(),
    );
  }

  List<NavModel> get _getPages => [
        NavModel(page: tPage(AppStrings.home.tr), navKey: homeNavKey),
        NavModel(page: tPage(AppStrings.mesaages.tr), navKey: messageNavKey),
        NavModel(page: tPage(AppStrings.myAccount.tr), navKey: myAccountNavKey),
      ];

  bool get _getCanPop {
    if (pages[selectedIndex.value].navKey.currentState?.canPop() ?? false) {
      pages[selectedIndex.value].navKey.currentState?.pop();
      return false;
    } else {
      return true;
    }
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getPrimaryThemeColor(context),
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(color: getPrimaryThemeColor(context)),
      ),
    );
  }
}

Widget tPage(String page) => Center(
      child: TextBodyLarge(page),
    );
