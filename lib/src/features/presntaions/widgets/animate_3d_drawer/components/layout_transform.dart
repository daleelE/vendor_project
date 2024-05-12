
import 'dart:math';

import '../../../../../../exports.dart';

class LayoutTransform extends StatelessWidget {
  const LayoutTransform({
    super.key,
    required this.screen,
    required this.fixedWidth,
    required this.animation,
    required this.scaleAnimation,
    this.menuClosed = true,
  });

  final bool menuClosed;
  final Widget screen;
  final double fixedWidth;
  final Animation<double> animation;
  final Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    double enValue = animation.value - 20 * animation.value * pi / 180;
    double arValue = animation.value - 90 * animation.value * pi / 180;
    return DeviceBuilder(builder: (context, info) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(!info.isAr ? enValue : arValue),
        child: Transform.translate(
          offset: !info.isAr
              ? Offset(animation.value * fixedWidth, 0)
              : Offset(-animation.value * fixedWidth, 0),
          child: Transform.scale(
            scale: scaleAnimation.value,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(menuClosed ? 0 : 32),
              ),
              child: screen,
            ),
          ),
        ),
      );
    });
  }
}

