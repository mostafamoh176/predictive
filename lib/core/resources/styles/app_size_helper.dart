import 'package:flutter_screenutil/flutter_screenutil.dart' ;

class DetectSize {
  DetectSize._();

  static DetectSize? _instance;

  static DetectSize getInstance() {
    _instance ??= DetectSize._();
    return _instance!;
  }

 double getWidth({required double width}){
    return width.w;
  }

  @override
  double getHeight({required double height}) {
    return height.h;
  }

  @override
  double getText({required double fontSize}) {
    return fontSize.sp;
  }

  @override
  double getRadius({required double radius}) {
    return radius.r;
  }
}