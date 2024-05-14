import '../../../../../exports.dart';

class TextHeadlineLarge extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final double? fontSize;
  final FontWeight? weight;
  final double opacity;
  const TextHeadlineLarge(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.fontSize,
    this.weight,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        style: context.headlineLarge!.copyWith(
            color: color ?? context.colorScheme.onSurface.withOpacity(opacity),
            fontSize: fontSize,
            fontWeight: weight),
      ),
    );
  }
}

class TextTitleSmall extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final double? fontSize;
  final FontWeight? weight;
  final double opacity;
  const TextTitleSmall(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.fontSize,
    this.weight,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        style: context.titleSmall!.copyWith(
            color: color ?? context.colorScheme.onSurface.withOpacity(opacity),
            fontSize: fontSize,
            fontWeight: weight),
      ),
    );
  }
}

class TextTitleMedium extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final double? fontSize;
  final FontWeight? weight;
  const TextTitleMedium(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.fontSize,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        style: context.titleMedium!.copyWith(
            color: color ?? context.colorScheme.onSurface,
            fontSize: fontSize,
            fontWeight: weight),
      ),
    );
  }
}

class TextTitleLarge extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final double? fontSize;
  final FontWeight? weight;
  const TextTitleLarge(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.fontSize,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        data,
        textAlign: TextAlign.start,
        maxLines: lines,
        overflow: flow,
        style: context.titleLarge!.copyWith(
            color: color ?? context.colorScheme.onSurface,
            fontSize: fontSize,
            fontWeight: weight),
      ),
    );
  }
}

class TextBodySmall extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final FontWeight? weight;
  final double? fontSize;
  final double opacity;
  const TextBodySmall(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.weight,
    this.fontSize,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        style: context.bodySmall!.copyWith(
            color: color ?? context.colorScheme.onSurface.withOpacity(opacity),
            fontWeight: weight,
            fontSize: fontSize),
      ),
    );
  }
}

class TextBodyMedium extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final double? fontSize;
  final FontWeight? weight;
  final double opacity;
  const TextBodyMedium(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.weight,
    this.fontSize,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        style: context.bodyMedium!.copyWith(
            color: color ?? context.colorScheme.onSurface.withOpacity(opacity),
            fontSize: fontSize,
            fontWeight: weight),
      ),
    );
  }
}

class TextBodyLarge extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final FontWeight? weight;
  final double? fontSize;
  final TextAlign? textAlign;
  final double opacity;
  const TextBodyLarge(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.weight,
    this.fontSize,
    this.textAlign,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        textAlign: textAlign,
        style: context.bodyLarge!.copyWith(
            color: color ?? context.colorScheme.onSurface.withOpacity(opacity),
            fontWeight: weight,
            fontSize: fontSize),
      ),
    );
  }
}

class TextLabelSmall extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final double? fontSize;
  final FontWeight? weight;
  final AlignmentDirectional position;
  final double opacity;
  const TextLabelSmall(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.fontSize,
    this.weight,
    this.position = AlignmentDirectional.centerStart,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: position,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        style: context.labelSmall!.copyWith(
            color: color ?? context.colorScheme.onSurface.withOpacity(opacity),
            fontSize: fontSize,
            fontWeight: weight),
      ),
    );
  }
}

class TextLabelMedium extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  final TextAlign? align;
  final double? fontSize;
  final FontWeight? weight;
  final AlignmentDirectional alignment;
  final double opacity;
  final bool underline;
  const TextLabelMedium(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
    this.align,
    this.fontSize,
    this.weight,
    this.alignment = AlignmentDirectional.centerStart,
    this.opacity = 1,
    this.underline = false,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: alignment,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        textAlign: align,
        style: context.labelMedium!.copyWith(
            color: color ?? context.colorScheme.onSurface.withOpacity(opacity),
            fontSize: fontSize,
            decoration: underline ? TextDecoration.underline : null,
            decorationColor: context.colorScheme.onSurface,
            fontWeight: weight),
      ),
    );
  }
}

class TextLabelLarge extends StatelessWidget {
  final String data;
  final Color? color;
  final int? lines;
  final TextOverflow? flow;
  const TextLabelLarge(
    this.data, {
    super.key,
    this.lines,
    this.color,
    this.flow,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        data,
        maxLines: lines,
        overflow: flow,
        style: context.labelLarge!
            .copyWith(color: color ?? context.colorScheme.onSurface),
      ),
    );
  }
}

class LabelWithUnit extends StatelessWidget {
  const LabelWithUnit(
      {super.key,
      this.labelStyle,
      this.unitStyle,
      required this.label,
      required this.unit});

  final TextStyle? labelStyle, unitStyle;
  final String label, unit;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: label,
          style: labelStyle ??
              context.labelMedium!
                  .copyWith(color: context.colorScheme.onSurface),
          children: [
            TextSpan(
              text: ' $unit',
              style: unitStyle ??
                  context.labelLarge!.copyWith(
                      color: context.colorScheme.onSurface.withOpacity(.6)),
            ),
          ]),
    );
  }
}
