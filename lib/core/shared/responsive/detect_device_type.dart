import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
abstract class ResponsiveType{
  bool isTablet(BuildContext context);
}

class ResponsiveTypeImpl implements ResponsiveType{
  @override
  bool isTablet(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var diagonal = math.sqrt(size.width * size.width + size.height * size.height);
    print("dssd${diagonal > 1100.0}");
    return diagonal > 1100.0; // threshold to consider device as a tablet
  }

}