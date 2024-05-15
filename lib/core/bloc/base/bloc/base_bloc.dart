import 'dart:async';
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/models/base_entity.dart';
import '../../../data/models/base_model/data_response.dart';
import '../../../domain/helper/helper.dart';
import '../../../resources/constants/asset_string.dart';
import '../../../resources/constants/routes.dart';
import '../../../routes/app_router.dart';
import '../../../shared/config/shared_preferences/shared_preferences.dart';
import '../../../shared/exception/base/app_exception.dart';
import '../../../shared/exception/remote/remote_exception.dart';
import 'base_bloc_event.dart';
import 'base_bloc_state.dart';

class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends Bloc<E, S> {
  BaseBloc(super.initialState);

  @override
  void add(E event) {
    if (!isClosed) {
      super.add(event);
    }
  }

  void runLoading() async {
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
              SizedBox(
                width: 120,
                height: 120,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  // backgroundColor:Theme.of(scaffoldKey.currentState!.context).primaryColor,
                  // valueColor: An,
                ),
              ),
              SvgPicture.asset(
                AssetString.tuwiqLogo,
                height: 60,
                width: 60,
              )
            ],
          ),
        ],
      ),
    );
  }

  void stopLoading() {
    EasyLoading.dismiss();
  }

  routeNavigate(String path) {
    if (path == '/na') {
      appRouter.replaceNamed(path);
    } else {
      appRouter.pushNamed(path);
    }
  }

  Future<dynamic> runCatching({
    required Future<dynamic> Function() action, //output
    Future<DataResponse> Function()? error,
    Future<dynamic> Function(DataResponse result)? success,
    bool showLoading = true,
    String? navPath,
    bool navigate = false,
    String? overrideErrorMessage,
  }) async {
    try {
      if (showLoading) {
        runLoading();
      }

      final output = await action.call().then((value) async {
        if (success != null) {
          navPath = await success.call(value);
        }
        return value;
      });

      if (navigate && navPath != null && appRouter.currentPath != navPath) {
        navPath == routeNavigate(navPath!);
      } else if (navigate && navPath == null) {
        appRouter.pop();
      }
      // if(output.alert){
      //   Helper.showSnackBar(text:output.message,color:Color(int.parse(output.color)), title: Languages.get(scaffoldKey.currentState!.context, key: 'success'),icon: output.icon);
      // }
      return output;
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 409) {
          Helper.showSnackBar(
              text: e.response?.data['message'],
              icon: e.response?.data['icon'],
              color: Color(int.parse(e.response?.data['color'])),
              title:
                  " Languages.get(scaffoldKey.currentState!.context, key: 'error')");
          // appRouter.push(
          //   //OtpRoute(routeInfo: Routes.login),
          // );
        } else if (e.response?.statusCode == 401) {
          Helper.showSnackBar(
              text: e.response?.data['message'],
              icon: e.response?.data['icon'],
              color: Color(int.parse(e.response?.data['color'])),
              title:
                  "Languages.get(scaffoldKey.currentState!.context,key: 'error')");
        //  await CacheHelper.removeData(key: 'token');
        } else if (e.response?.statusCode == 422) {
          final Map<String, dynamic> error = e.response?.data['errors'];
          Helper.showSnackBar(
              text: error.values.first.first.toString(),
              icon: e.response?.data['icon'],
              title: error.keys.first,
              color:
                  Color(int.parse(e.response?.data?['color'] ?? '0xFFFF0000')));
        } else {
          Helper.showSnackBar(
              text: e.response?.data['message'],
              icon: e.response?.data['icon'],
              title: "error",
              color:
                  Color(int.parse(e.response?.data['color'] ?? '0xFFFF0000')));
        }
      } else {
        print(e.toString() + '---------');
        //Helper.showSnackBar(
        //title:Languages.get(scaffoldKey.currentState!.context, key: 'error'),
        // color:Theme.of(scaffoldKey.currentState!.context).primaryColor);
      }
      return null;
    } finally {
      if (showLoading) {
        stopLoading();
      }
    }
  }

  bool forceHandleError(AppException appException) {
    return appException is RemoteException &&
        appException.kind == RemoteExceptionKind.refreshTokenFailed;
  }
}
