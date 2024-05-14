import '../../../../../../exports.dart';
import '../../custom_animations/scale_animation.dart';

class NavItem extends StatelessWidget {
  final NavItemM nav;
  final bool selected;
  final VoidCallback tap;
  const NavItem({
    super.key,
    required this.nav,
    required this.selected,
    required this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MyScaleAnimation(
        scale: .9,
        repeat: selected,
        duration: .5,
        child: Container(
          // color: Colors.red.withOpacity(.5),
          margin: EdgeInsets.symmetric(horizontal: 4.rW),
          child: InkWell(
            onTap: tap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // AnimatedBar(isActive: selected),
                // verticalSpacing(4),
                SvgIcon(
                  selected ? nav.activeIcon : nav.icon,
                  width: 24,
                  color: context.colorScheme.onPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.only(bottom: 2),
      height: 3.rH,
      width: isActive ? 20.rW : 0,
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class NavItemM {
  final String icon;
  final String activeIcon;
  final String label;

  NavItemM({required this.icon, required this.activeIcon, required this.label});
}

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  const NavModel({required this.page, required this.navKey});
}
