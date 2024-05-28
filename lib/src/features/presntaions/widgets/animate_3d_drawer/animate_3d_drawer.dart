import '../../../../../exports.dart';
import 'components/layout_transform.dart';
import 'components/side_menu_btn.dart';

class Animated3dDrawer extends StatefulWidget {
  final Widget mainScreen;
  final Widget menu;
  final Widget bottomNav;
  const Animated3dDrawer(
      {super.key,
      required this.mainScreen,
      required this.menu,
      required this.bottomNav});

  @override
  State<Animated3dDrawer> createState() => _Animated3dDrawerState();
}

class _Animated3dDrawerState extends State<Animated3dDrawer>
    with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  
  double fixedWidth = SizeConfig.screenWidth / 2;
  ValueNotifier<bool> menuClose = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });
    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: getPrimaryThemeColor(context),
      body: Stack(
        children: [
          AnimatedPositionedDirectional(
            width: fixedWidth,
            height: SizeConfig.screenHeight,
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastOutSlowIn,
            start: menuClose.value ? -fixedWidth : 0,
            child: widget.menu,
          ),
          LayoutTransform(
            fixedWidth: fixedWidth,
            menuClosed: menuClose.value,
            screen: widget.mainScreen,
            animation: animation,
            scaleAnimation: scaleAnimation,
          ),
          ValueListenableBuilder(
              valueListenable: menuClose,
              builder: (context, val, _) {
                return AnimatedPositionedDirectional(
                  duration: const Duration(milliseconds: 500),
                  top: 18.rH,
                  start: !val ? (SizeConfig.screenWidth / 2 - 24.rW) : 24.rW,
                  child: SideMenuBtn(
                    val,
                    onChangedMenuState: (open) {
                      if (val) {
                        menuClose.value = false;
                        animationController.forward();
                      } else {
                        menuClose.value = true;
                        animationController.reverse();
                      }
                    },
                  ),
                );
              }),
        ],
      ),
      bottomNavigationBar: Transform.translate(
          offset: Offset(0, 200 * animation.value), child: widget.bottomNav),
    );
  }
}
