import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../exports.dart';


class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
    this.controller,
    this.label,
    this.value,
    this.hint,
    this.helperText,
    this.suffix,
    this.suffixIcon,
    this.prefixIcon,
    this.textAlign,
    this.read,
    this.keyboardType,
    this.onChanged,
    this.onFieldSubmitted,
    this.titleStyle,
    this.contentPadding,
    this.inputColor,
    this.counter,
    this.maxCharacters,
    this.validate,
    this.title,
    this.titleColor,
    this.maxLines = 1,
    this.obscure = false,
    this.radius = 8,
  });
  final TextEditingController? controller;
  final String? title;
  final Color? titleColor;
  final String? label;
  final String? value;
  final String? hint;
  final String? helperText;
  final String? suffix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final bool? read;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final int maxLines;
  final bool obscure;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? contentPadding;
  final Color? inputColor;
  final Widget? counter;
  final int? maxCharacters;
  final String? Function(String? val)? validate;
  final double radius;

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  bool get isDarkTheme => context.read<ThemeBloc>().state == ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.title != null)
            Container(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                widget.title!.capitalize!,
                style: widget.titleStyle ??
                    context.bodyMedium!.copyWith(color: context.colorScheme.onSurface),
              ),
            ),
          TextFormField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted,
            autofocus: false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            initialValue: widget.value,
            readOnly: widget.read ?? false,
            obscureText: widget.obscure,
            validator: widget.validate,
            textAlign: widget.textAlign ?? TextAlign.start,
            keyboardType: widget.keyboardType,
            maxLines: widget.maxLines,
            cursorColor: context.colorScheme.onSurface,
            inputFormatters: widget.maxCharacters != null
                ? [
                    LengthLimitingTextInputFormatter(widget.maxCharacters),
                  ]
                : [],
            style: widget.titleStyle ??
                context.bodyLarge!
                    .copyWith(color: context.colorScheme.onSurface),
            strutStyle: StrutStyle.fromTextStyle(context.bodyMedium!
                .copyWith(color: AppColor.primary.withOpacity(.7))),
            decoration: InputDecoration(
              labelText: widget.label,
              contentPadding: widget.contentPadding ??
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              fillColor: widget.inputColor ??
                  (isDarkTheme
                      ? context.colorScheme.surface.lighten(20)
                      : context.colorScheme.surface.darken(5)),
              filled: true,
              counter: widget.counter,
              counterText: widget.helperText ?? '',
              counterStyle: context.labelSmall!.copyWith(color: Colors.black54),
              hintText: widget.hint != null ? widget.hint!.capitalize : '',
              hintStyle: context.bodySmall!.copyWith(
                  color: context.colorScheme.onSurface.lighten(50)),
              // helperText: c ?? "" ,
              suffixText: widget.suffix,
              suffixStyle: context.bodySmall!.copyWith(color: Colors.black54),
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              border: customDefaultBorder(radius: widget.radius),
              focusedBorder: customDefaultBorder(
                  color: context.colorScheme.primary, radius: widget.radius),
              focusedErrorBorder: customDefaultBorder(
                  color: context.colorScheme.error, radius: widget.radius),
              enabledBorder: customDefaultBorder(radius: widget.radius),
              errorBorder: customDefaultBorder(
                  color: context.colorScheme.error, radius: widget.radius),
              disabledBorder: customDefaultBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

OutlineInputBorder customDefaultBorder({Color? color, double radius = 4}) =>
    OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide.none);
