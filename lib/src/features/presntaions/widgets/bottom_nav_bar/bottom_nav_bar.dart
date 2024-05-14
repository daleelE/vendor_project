import '../../../../../../exports.dart';
import '../custom_animations/scale_animation.dart';
import 'components/custom_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final List<NavItemM> navRoutes;
  final int pageIndex;
  final Function(int) tap;

  const BottomNavBar({
    super.key,
    required this.navRoutes,
    required this.pageIndex,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBottomBar(
      children: [
        ...List.generate(navRoutes.length, (index) {
          return NavItem(
            selected: pageIndex == index,
            nav: navRoutes[index],
            tap: () => tap(index),
          );
        })
      ],
    );
  }
}
