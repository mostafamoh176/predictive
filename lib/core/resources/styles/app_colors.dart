import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/asset_string.dart';
import 'app_font_styles.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xff0D0D0F),
    primaryColor: Color(0xff161619),
    focusColor:   Color(0xff151515),//top scroll
    dividerColor: Color(0xff212427),
    unselectedWidgetColor: Color(0xff00BCAF),
    disabledColor: const Color(0xff949494),
    cardColor: Color(0xffF5F5F5),
    errorColor: Color(0xffE40C0C),
    hoverColor: Color(0xff212126),
    toggleableActiveColor: Color(0xff00AC3A),
    splashColor: Color(0xff3E3F48),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight600,fontSize: AppFontStyles.header,color:Color(0xffFFFFFF)),
      displayMedium: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight600,fontSize: AppFontStyles.header2,color:Color(0xffFFFFFF) ),
      displaySmall: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight600,fontSize: AppFontStyles.title,color:Color(0xffFFFFFF) ),
      headlineLarge: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight400,fontSize: AppFontStyles.title,color:Color(0xffFFFFFF) ),
      headlineMedium: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight400,fontSize: AppFontStyles.title2,color:Color(0xffFFFFFF) ),
      headlineSmall: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight400,fontSize: AppFontStyles.body,color:Color(0xffE40C0C) ),
          titleLarge: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight600,fontSize: AppFontStyles.title2,color:Color(0xffFFFFFF) ),
          titleMedium: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight400,fontSize: AppFontStyles.title2,color:Color(0xffB1B1B8) ),
          titleSmall: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight400,fontSize: AppFontStyles.body,color:Color(0xffE1E1E5) ),
      bodyLarge: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight400,fontSize: AppFontStyles.body,color: Color(0xff00AC3A) ),
      bodyMedium: TextStyle(fontFamily: AssetString.fontFamily,fontWeight: AppFontStyles.fontWeight400,fontSize: AppFontStyles.body,color: Color(0xff3E3F48) ),


    ),
    useMaterial3: true,
   highlightColor: Color(0xffEDEDEF)
);

// LinearGradient linearGradient=LinearGradient(colors: [
//   Theme.of(scaffoldKey as BuildContext).primaryColor,
//   Theme.of(scaffoldKey as BuildContext).primaryColor,
//   Theme.of(scaffoldKey as BuildContext).canvasColor,
// ],
// );

