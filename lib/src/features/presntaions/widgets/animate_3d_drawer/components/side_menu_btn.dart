import '../../../../../../exports.dart';

class SideMenuBtn extends StatefulWidget {
  final bool menuState;
  final Function(bool) onChangedMenuState;
  const SideMenuBtn(this.menuState,
      {super.key, required this.onChangedMenuState});

  @override
  State<SideMenuBtn> createState() => _SideMenuBtnState();
}

class _SideMenuBtnState extends State<SideMenuBtn> {
  bool menuClosed = true;
  @override
  Widget build(BuildContext context) {
    menuClosed = widget.menuState;
    return SafeArea(
      child: SvgButton(
        menuClosed ? IconsLine.menu : IconsLine.close,
        iconColor: menuClosed
            ? context.colorScheme.onSurface
            : context.colorScheme.onPrimary,
        press: () {
          setState(() {
            menuClosed = !menuClosed;
            widget.onChangedMenuState(menuClosed);
          });
        },
      ),
    );
  }
}
