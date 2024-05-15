import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/styles/app_font_styles.dart';
import '../resources/styles/app_text_styles.dart';


class KTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function()?  onEditingComplete;
  final TextInputType? keyboardType;
  final Widget? suffixIcon, prefixIcon;
  final String?hintText, labelText, errorText;
  final bool autofocus, enabled, expanded;
  final double? kWidth, height;
  final int? maxLines;
  final int? maxLength;
  final TextStyle? labelStyle,hintStyle;
  final List<TextInputFormatter>? formatter;
  final bool obscureText;
  final bool? readOnly;
  final TextAlign? textAlign;
  final FocusNode? focusNode;
  final Color? fillColor;
  final InputDecoration? kDecoration;
  final TextInputAction? textInputAction;
  final void Function()? onTap;
  final Decoration? boxDecoration;
  final TextStyle? style;
  final String? initVal;
  final void Function(PointerDownEvent)? onTapOutside;
  final double? customHeight;
  final bool? fill;
  final InputBorder? inputBorder;
  final InputBorder? errorBorder;
  final bool? disappearLabel;
  final Widget? customLabel;

  const KTextFormField({
    super.key,
    this.controller,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onTapOutside,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.labelText,
    this.onTap,
    this.errorText,
    this.keyboardType,
    this.onChanged,
    this.autofocus = false,
    this.prefixIcon,
    this.enabled = true,
    this.expanded = false,
    this.kWidth,
    this.height,
    this.maxLines,
    this.formatter,
    this.textAlign,
    this.focusNode,
    this.fillColor,
    this.initVal,
    this.readOnly,
    this.kDecoration,
    this.maxLength,
    this.style,
    this.textInputAction,
    this.boxDecoration,
    this.labelStyle, this.hintText, this.hintStyle,
    this.customHeight,
    this.fill,
    this.inputBorder,
    this.disappearLabel,
    this.errorBorder,
    this.customLabel
  });

  @override
  State<KTextFormField> createState() => _KTextFormFieldState();
}

class _KTextFormFieldState extends State<KTextFormField> {
  onChange(String? p0) => setState(() => _enteredText = "  $p0");

  String? _enteredText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.disappearLabel!=null?SizedBox():widget.customLabel??Text("${widget.labelText}",
          style:widget.labelStyle??TextStyle(fontWeight: FontWeight.w600, fontSize: 14,
            fontFamily: FontConstant.fontFamilySemiBold,
            color: Theme.of(context).dividerColor,),),
        Padding(
          padding:  EdgeInsets.only(top:widget.disappearLabel==null? 12.h:0.h),
          child: TextFormField(
            onFieldSubmitted: widget.onFieldSubmitted,
            textInputAction: widget.textInputAction,
            readOnly: widget.readOnly ?? false,
            onTapOutside: widget.onTapOutside,
            focusNode: widget.focusNode,
            textAlign: widget.textAlign ?? TextAlign.start,
            inputFormatters: (widget.formatter ?? [])
              ..add(
                FilteringTextInputFormatter.deny(RegExp(r'[٠١٢٣٤٥٦٧٨٩]')),
              ),

            onEditingComplete: widget.onEditingComplete,
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            autofocus: widget.autofocus,
            enabled: widget.enabled,
            onTap: widget.onTap,
            expands: widget.expanded,
            initialValue: widget.controller == null ? widget.initVal : null,
            cursorColor: Theme.of(context).textTheme.titleLarge!.color,
            validator: widget.validator,
            style: widget.style,
            autovalidateMode: AutovalidateMode.disabled,
            onChanged: (value) {
              widget.onChanged?.call(value);
              onChange(value);
            },
            obscuringCharacter: "*",
            obscureText: widget.obscureText,
            maxLines: widget.maxLines ?? (widget.obscureText ? 1 : null),
            maxLength: widget.maxLength,
            textAlignVertical: TextAlignVertical.center,
            decoration: widget.kDecoration ??
                InputDecoration(
                  enabledBorder:widget.inputBorder?? OutlineInputBorder(
                    borderSide:  BorderSide(color: Theme.of(context).disabledColor,),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Theme.of(context).primaryColor,),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  border: OutlineInputBorder(
                    borderSide:  BorderSide(color: Theme.of(context).primaryColor,),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Theme.of(context).disabledColor,),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  errorBorder:widget.errorBorder?? OutlineInputBorder(
                    borderSide:  BorderSide(color: Theme.of(context).errorColor,),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  filled: widget.fill,
                  fillColor: widget.fillColor,
                  hintText: widget.hintText,
                  hintStyle: widget.hintStyle??AppStyles.appTextStyles(color: Theme.of(context).disabledColor, fontWeight: AppFontStyles.fontWeight400, fontSize: AppFontStyles.body),
                //  labelText: widget.labelText,
                  labelStyle: widget.labelStyle??AppStyles.appTextStyles(color: Theme.of(context).textTheme.titleLarge!.color!, fontWeight: AppFontStyles.fontWeight600, fontSize: AppFontStyles.body),
                  floatingLabelStyle: widget.labelStyle ,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: widget.suffixIcon,
                  ),
                  prefixIcon: widget.prefixIcon,
                  errorStyle:TextStyle(color: Theme.of(context).errorColor,fontWeight: FontWeight.w400,fontSize: 14.sp),

                  counterText: widget.maxLength != null ? '${_enteredText?.length.toString()} / ${widget.maxLength}' : null,
                ),
          ),
        ),
      ],
    );
  }
}