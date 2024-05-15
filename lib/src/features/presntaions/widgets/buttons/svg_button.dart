import '../../../../../exports.dart';

class SvgButton extends StatelessWidget {
  const SvgButton(
    this.icon, {
    super.key,
    required this.press,
    this.margin,
    this.height,
    this.background,
    this.size = 20,
    this.paddingValue = 4,
    this.radius = 320,
    this.iconColor,
    this.filled = false,
    this.isCircle = false,
    this.borderWidth = .7,
    this.borderColor,
    this.padding,
  });
  final VoidCallback press;
  final String icon;
  final EdgeInsetsGeometry? margin;
  final bool filled;
  final Color? background;
  final double size;
  final double paddingValue;
  final double radius;
  final Color? iconColor;
  final bool isCircle;
  final Color? borderColor;
  final double? height;
  final double borderWidth;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      decoration: filled
          ? BoxDecoration(
              color: background ?? context.colorScheme.primary,
              border: borderColor != null
                  ? Border.all(
                      color: borderColor!,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      width: borderWidth,
                    )
                  : null,
              shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: isCircle ? null : BorderRadius.circular(radius))
          : null,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          borderRadius: BorderRadius.circular(isCircle ? 320 : radius),
          child: Padding(
            padding: padding ?? EdgeInsets.all(paddingValue),
            child: SvgIcon(
              icon,
              color: iconColor ?? context.colorScheme.onSurface,
              width: size,
            ),
          ),
        ),
      ),
    );
  }
}
