
import '../../../../../exports.dart';

class SvgIcon extends StatelessWidget {
  final String icon;
  final double width;
  final Color? color;
  final double opacity;
  final EdgeInsetsGeometry? padding;
  final bool isNetwork;
  const SvgIcon(
    this.icon, {
    super.key,
    this.width = 20,
    this.color,
    this.padding,
    this.isNetwork = false,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(4.rW),
      child: !isNetwork ? iconAsset(context) : iconNetwork(context),
    );
  }

  SvgPicture iconNetwork(BuildContext context) {
    return SvgPicture.network(
      icon,
      width: width.rW,
      colorFilter: colorFilter(context),
    );
  }

  ColorFilter colorFilter(BuildContext context) {
    return ColorFilter.mode(
      color ?? context.colorScheme.onSurface.withOpacity(opacity),
      BlendMode.srcIn,
    );
  }

  SvgPicture iconAsset(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width.rW,
      allowDrawingOutsideViewBox: true,
      excludeFromSemantics: true,
      alignment: AlignmentDirectional.centerStart,
      clipBehavior: Clip.none,
      colorFilter: ColorFilter.mode(
          color ?? context.colorScheme.onSurface, BlendMode.srcIn),
    );
  }
}
