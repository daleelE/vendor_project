import '../../../../../exports.dart';
import '../custom_animations/scale_animation.dart';

class IconWithCounter extends StatelessWidget {
  final int count;
  final String icon;
  final VoidCallback tap;
  const IconWithCounter(this.icon,
      {super.key, required this.tap, this.count = 10});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      clipBehavior: Clip.none,
      children: [
        SvgButton(
          icon,
          press: tap,
          size: 22,
          iconColor: context.colorScheme.onSurface,
        ),
        Visibility(
          visible: count != 0,
          child: MyScaleAnimation(
            repeat: true,
            scale: .7,
            child: budgetNum(context),
          ),
        )
      ],
    );
  }

  Container budgetNum(BuildContext context) {
    String num = count.toString();
    if (count > 9) {
      num = '9+';
    }
    return Container(
      width: 16.rW,
      height: 16.rW,
      padding: EdgeInsets.all(2.rW),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: context.colorScheme.surface,
            strokeAlign: BorderSide.strokeAlignOutside,
            width: 1),
        color: context.colorScheme.primary,
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            num.numTr(context),
            textAlign: TextAlign.center,
            style: context.labelSmall!
                .copyWith(color: context.colorScheme.onPrimary, fontSize: 8.rF),
          ),
        ),
      ),
    );
  }
}
