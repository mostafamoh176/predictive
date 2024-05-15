import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/styles/app_font_styles.dart';
import '../resources/styles/app_text_styles.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.title,
    this.action,
    this.navigate,
    this.leading,
    this.height,
    this.color,
    this.trail,
    this.titleStyle,
    this.width,
    this.linearGradient,
    this.border
  });

  final String title;
  double? height;
  double? width;
  bool? linearGradient;
  Color? color;
  Function()? action;
  TextStyle? titleStyle;
  Function()? navigate;
  Widget? leading;
  Widget? trail;
  bool?border;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: action,
      child: Container(
        width:width?? w,
        height: height ?? 50.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: color ?? Theme.of(context).primaryColor,
          gradient: linearGradient==true?LinearGradient(
            colors: [Theme.of(context).primaryColor,Theme.of(context).hoverColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ):null,
          border:border==true? Border.all(color: Theme.of(context).primaryColor,width: 1):null

        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leading ?? SizedBox.shrink(),
            Text(
              title,
              style: titleStyle ??
                   TextStyle(
              fontFamily:FontConstant.fontFamilyBold,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).cardColor,
              height: 16/14,
            ),
            ),
            trail ?? SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
