import 'package:flutter/cupertino.dart';

import '../../../../../exports.dart';

class AdaptiveFilledButtonWidget extends StatefulWidget {
  final VoidCallback press;
  final String label;
  final double? btnHight;
  const AdaptiveFilledButtonWidget(
      {super.key, required this.press, required this.label, this.btnHight});

  @override
  State<AdaptiveFilledButtonWidget> createState() =>
      _AdaptiveFilledButtonWidgetState();
}

class _AdaptiveFilledButtonWidgetState
    extends State<AdaptiveFilledButtonWidget> {
  double btnWidth = SizeConfig.screenWidth;
  double btnHight = 56.rH;

  @override
  void initState() {
    super.initState();
    if (widget.btnHight != null) {
      btnHight = widget.btnHight!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DeviceBuilder(builder: (context, info) {
      if (info.isIOS) return iosFilledBtn(context);
      return androidFilledBtn(context);
    });
  }

  Widget iosFilledBtn(BuildContext context) {
    return SizedBox(
      width: btnWidth,
      height: btnHight,
      child: CupertinoButton.filled(
        onPressed: widget.press,
        child: labelBtn(context),
      ),
    );
  }

  Widget androidFilledBtn(BuildContext context) {
    return FilledButton(
        onPressed: widget.press,
        style: FilledButton.styleFrom(
            backgroundColor: context.colorScheme.primary,
            fixedSize: Size(btnWidth, btnHight)),
        child: labelBtn(context));
  }

  Widget labelBtn(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        widget.label.toUpperCase(),
        style:
            context.labelLarge!.copyWith(color: context.colorScheme.onPrimary),
      ),
    );
  }
}
