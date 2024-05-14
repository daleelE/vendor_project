
import '../../../../../exports.dart';

class LeadingWidget extends StatelessWidget {
  final VoidCallback? press;
  final String? icon;
  final double? size;
  final Color? color;
  const LeadingWidget(
      {super.key, required this.press, this.icon, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return AppInfoBuilder(
      builder: (params) => SvgButton(
        icon ??
            (params.isEng ? IconsLine.arrowShortLeft : IconsLine.arrowShortRight),
        size: size ?? 24,
        padding: EdgeInsetsDirectional.only(end: 12.rW),
        iconColor: color ?? context.colorScheme.onSurface,
        press: press ?? () => back,
      ),
    );
  }
}
