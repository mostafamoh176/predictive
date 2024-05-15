import 'dart:ui';

class AppFontStyles{
  //AppSize
  static const double header = 24;
  static const double header2 = 20;
  static const double title = 18;
  static const double title2 = 16;
  static const double body = 14;
  static const double body2 = 12;
  static const double paragraph = 10;
  static const double paragraph2 = 8;
  static const double borderWidth = 1;
  static const double padding =4 ;
  static const double padding2 =7 ;


  //AppFont
  static const FontWeight fontWeight400 = FontWeight.w400;
  static const FontWeight fontWeight500 = FontWeight.w500;
  static const FontWeight fontWeight600 = FontWeight.w600;
  static const FontWeight fontWeight700 = FontWeight.w700;
  static const FontWeight fontWeight800 = FontWeight.w800;
  static const FontWeight fontWeight900 = FontWeight.w900;


}

class FontConstant {
  static const String fontFamilyBlack = "Poppins-Black";
  static const String fontFamilyBold = "Poppins-Bold";
  static const String fontFamilySemiBold = "Poppins-Semi-Bold";
  static const String fontFamilyExtraBold = "Poppins-ExtraBold";
  static const String fontFamilyExtraLight= "Poppins-ExtraLight";
  static const String fontFamilyLight= "Poppins-Light";
  static const String fontFamilyMedium = "Poppins-Medium";
  static const String fontFamilyRegular = "Poppins-Regular";
  static const String fontFamilyThin = "Poppins-Thin";
  static const String commonFont = "en";
}

class FontWeightManager {
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w700;
  static const FontWeight bold = FontWeight.w900;
}

class FontSize {
  static const double s15 = 15.0;
  static const double s16 = 16.0;
  static const double s20 = 20.0;
  static const double s25 = 25.0;
  static const double s30 = 30.0;
  static const double s32 = 32.0;
  static const double s35 = 35.0;
  static const double s40 = 40.0;
  static const double s42 = 42.0;
}

TextStyle _getTextStyle(
    double fontSize,
    String fontFamily,
    Color color,
    fontWeight,
    height,
    letterSpacing,
    ) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
    height: height,
    letterSpacing: letterSpacing,
  );
}

TextStyle getEtraLightStyle({
  double fontSize = FontSize.s15,
  required Color color,
  height = null,
  letterSpacing = null,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamilyRegular,
    color,
    FontWeightManager.extraLight,
    height,
    letterSpacing,
  );
}

TextStyle getLightStyle({
  double fontSize = FontSize.s20,
  required Color color,
  height = null,
  letterSpacing = null,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamilyRegular,
    color,
    FontWeightManager.light,
    height,
    letterSpacing,
  );
}

TextStyle getRegularStyle({
  double fontSize = FontSize.s25,
  required Color color,
  height = null,
  letterSpacing = null,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamilyRegular,
    color,
    FontWeightManager.regular,
    height,
    letterSpacing,
  );
}

TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s30,
  required Color color,
  height = null,
  letterSpacing = null,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamilyRegular,
    color,
    FontWeightManager.semiBold,
    height = null,
    letterSpacing = null,
  );
}

TextStyle getBoldStyle({
  double fontSize = FontSize.s32,
  required Color color,
  height = null,
  letterSpacing = null,
}) {
  return _getTextStyle(
    fontSize,
    FontConstant.fontFamilyRegular,
    color,
    FontWeightManager.bold,
    letterSpacing,
    height,
  );
}