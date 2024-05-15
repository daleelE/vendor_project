import '../../../../../exports.dart';

class MyScaleAnimation extends StatefulWidget {
  final Widget child;
  final bool repeat;
  final double scale;
  final double duration;
  const MyScaleAnimation({
    super.key,
    required this.child,
    this.repeat = false,
    this.scale = 0,
    this.duration = 1,
  });

  @override
  State<MyScaleAnimation> createState() => _MyScaleAnimationState();
}

class _MyScaleAnimationState extends State<MyScaleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = _animationController;
    animation = _animation(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _onAnimationCompleted();
    return ScaleTransition(
      scale: animation,
      child: widget.child,
    );
  }

  _onAnimationCompleted() {
    if (widget.repeat) {
      animationController
        ..forward()
        ..repeat(reverse: true);
    } else {
      animationController.forward();
    }
  }

  AnimationController get _animationController => AnimationController(
        vsync: this,
        lowerBound: widget.scale,
        duration: Duration(milliseconds: (widget.duration * 1000).toInt()),
      );

  Animation<double> _animation(AnimationController controller) => Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(controller);
}
