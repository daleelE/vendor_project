import '../../../../../../../exports.dart';

class VendorBottomNav extends StatelessWidget {
  final NavModel page;
  final int selectedIndex;
  final Function(int) onChanged;
  const VendorBottomNav({
    super.key,
    required this.onChanged,
    required this.selectedIndex,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavBar(
      navRoutes: vendorNavRoutes,
      pageIndex: selectedIndex,
      tap: (index) => _toggleNav(index),
    );
  }

  _toggleNav(int index) {
    if (index == selectedIndex) {
      page.navKey.currentState?.popUntil((route) => route.isFirst);
    } else {
      onChanged(index);
    }
  }
}

List<NavItemM> vendorNavRoutes = [
  NavItemM(icon: IconsLine.home, activeIcon: IconFill.home, label: AppStrings.home),
  NavItemM(icon: IconsLine.chatRoundDots, activeIcon: IconFill.chatRoundDots, label: AppStrings.mesaages),
  NavItemM(icon: IconsLine.usersRound, activeIcon: IconFill.userRound, label: AppStrings.myAccount),
];
