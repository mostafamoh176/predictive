import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/src/easy_loading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/constants/asset_string.dart';

class EasyLoadingImpl{
  EasyLoadingImpl._();

  static void runLoading() async {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..textColor = Colors.transparent
      ..indicatorColor = Colors.transparent
      ..backgroundColor = Colors.transparent
      ..userInteractions = false
      ..boxShadow = <BoxShadow>[]
      ..dismissOnTap = false;
    await EasyLoading.show(
      indicator: Stack(
        alignment: Alignment.center,
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
            child: Container(),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const SizedBox(
                width: 120,
                height: 120,
                child: CircularProgressIndicator(
                    strokeWidth: 2,
                    backgroundColor:Color(0xff5915FC)
                  // valueColor: An,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static void stopLoading() {
    EasyLoading.dismiss();
  }


}