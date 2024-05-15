import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:toastification/toastification.dart';
import '../../resources/constants/asset_string.dart';
import '../../resources/styles/app_font_styles.dart';
import '../../resources/styles/app_text_styles.dart';
import '../../routes/app_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/primary_button.dart';

class Helper {
  static bottomSheet(BuildContext context, {double? height, required Widget child, required String title, Widget? confirmAction, bool? foundedCancel = true}) {
    showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        builder: (context) {
          return Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            height: height ?? MediaQuery.sizeOf(context).height * 0.80,
            child: Scaffold(
              backgroundColor: Theme.of(context).primaryColor,
              resizeToAvoidBottomInset: false,
              body: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        margin: EdgeInsetsDirectional.only(start: 40),
                        decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
                        child: Center(
                          child: Text(
                            title,
                            style: AppStyles.appTextStyles(
                              color: Theme.of(context).primaryColor,
                              fontWeight: AppFontStyles.fontWeight600,
                              fontSize: AppFontStyles.title2,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsetsDirectional.only(end: 20),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          // Set the desired background color here
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          color: Theme.of(context).primaryColor,
                          iconSize: 18,
                          onPressed: AutoRouter.of(context).pop,
                          icon: const Icon(Icons.close),
                        ),
                      ),
                    ],
                  ),
                  child,
                  confirmAction ?? const SizedBox.shrink(),
                  !foundedCancel!
                      ? SizedBox()
                      : TextButton(
                          onPressed: AutoRouter.of(context).pop,
                          child: Text("Languages.get(context, key: 'cancel')",
                              style: AppStyles.appTextStyles(
                                color: Theme.of(context).primaryColor,
                                fontWeight: AppFontStyles.fontWeight500,
                                fontSize: AppFontStyles.title2,
                              )))
                ],
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        isScrollControlled: true,
        useSafeArea: true,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 0.0),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ));
  }

  static showAlertDialog({required BuildContext context, required String title, required String errorMessage, String? iconAsset, Widget? actionButton1, Widget? actionButton2, void Function()? onTap, Widget? titleBody, Widget? body}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
          surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r), // Adjust the border radius here
          ),
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                onTap: onTap ??
                    () {
                      appRouter.pop();
                    },
                child: Icon(
                  Icons.close,
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ],
          ),
          iconPadding: EdgeInsetsDirectional.only(top: 16.h, start: 16.w),
          titlePadding: EdgeInsets.zero,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  padding: EdgeInsets.all(1.h),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Theme.of(context).primaryColor, Theme.of(context).hoverColor],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )),
                  child: Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).scaffoldBackgroundColor),
                    child: Center(
                        child: SvgPicture.asset(
                      iconAsset ?? AssetString.error,
                      color: Theme.of(context).primaryColor,
                    )),
                  )),
              SizedBox(
                height: 16.h,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Theme.of(context).dividerColor,
                  fontFamily: FontConstant.fontFamilyBold,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  height: 24 / 16,
                ),
              ),
            ],
          ),
          content: body == null
              ? Text(
                  errorMessage,
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontFamily: FontConstant.fontFamilyMedium,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    height: 24 / 16,
                  ),
                  textAlign: TextAlign.center,
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [titleBody ?? SizedBox(), body ?? SizedBox()],
                ),
          actions: [
            actionButton1 ??
                PrimaryButton(
                  action: () {
                    appRouter.pop();
                  },
                  title: "ok",
                  linearGradient: true,
                ),
            actionButton2 ?? SizedBox()
          ],
        );
      },
    );
  }

  static showVerificationDone({required BuildContext context, Function()? action}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
          surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r), // Adjust the border radius here
          ),
          iconPadding: EdgeInsetsDirectional.only(top: 16.h, start: 16.w),
          titlePadding: EdgeInsets.zero,
          content: SizedBox(
            height: 200.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 4, child: Center(child: Image.asset(AssetString.verifyGif))),
                Expanded(
                  child: Text(
                    "Verification done",
                    style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 24.sp, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          actions: [
            PrimaryButton(
              action: action,
              title: "Next",
              linearGradient: true,
            ),
          ],
        );
      },
    );
  }

  /*


  */

  static Future<void> showToast({required String text, Color? color}) => Fluttertoast.showToast(
        backgroundColor: color ?? Color(0xff5915FC),
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 50,
        // backgroundColor: Theme.of(scaffoldKey.currentState!.context).primaryColor,
        textColor: Colors.white,
        fontSize: 16.0,
      );
  static showCancelBillToast({required String text, Color? color}) => AnimatedSnackBar(
        builder: ((context) {
          return Container(
            decoration: BoxDecoration(
                color: Color(0xff5915FC),
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(8),
            height: 50,
            child: Row(
              children: [
                SvgPicture.asset(AssetString.correct),
                SizedBox(
                  width: 5,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 14,
                    fontFamily: FontConstant.fontFamilySemiBold,
                    fontWeight: AppFontStyles.fontWeight700,
                  ),
                ),
              ],
            ),
          );
        }),
      ).show(appRouter.navigatorKey.currentState!.context);

  static showSnackBar({String? text, required String title, required Color color, String? icon}) {
    // return  scaffoldKey.currentState?.showSnackBar(SnackBar(
    //     content: ConstrainedBox(
    //       constraints: const BoxConstraints(maxHeight: 75, minHeight: 75),
    //       child: Row(
    //         children: [
    //           FittedBox(
    //             fit: BoxFit.fitHeight,
    //             child: DecoratedBox(
    //               decoration: BoxDecoration(color: color),
    //               child: ConstrainedBox(
    //                 constraints: const BoxConstraints(maxHeight: 120, minHeight: 75, maxWidth: 8, minWidth: 8),
    //               ),
    //             ),
    //           ),
    //           const SizedBox(
    //             width: 10,
    //           ),
    //           Icon(
    //             icon == null
    //                 ? Icons.info_outline_rounded
    //                 : IconData(
    //               int.parse(icon),
    //             ),
    //             color: color,
    //           ),
    //           const SizedBox(
    //             width: 10,
    //           ),
    //           Expanded(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   title,
    //                   style: AppStyles.appTextStyles(
    //                       color:Colors.white,
    //                       fontWeight: AppFontStyles.fontWeight600,
    //                       fontSize: AppFontStyles.body),
    //                 ),
    //                 Text(
    //                   text ?? "something went wrong",
    //                   style: AppStyles.appTextStyles(
    //                       color:Colors.white,
    //                       fontWeight: AppFontStyles.fontWeight400,
    //                       fontSize: AppFontStyles.body2),
    //                 )
    //               ],
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //     padding: EdgeInsets.zero,
    //     behavior: SnackBarBehavior.floating,
    //     dismissDirection: DismissDirection.horizontal,
    //     elevation: 10,
    //     backgroundColor: Color(0xff5915FC),
    //     margin: const EdgeInsets.all(20),
    //   ));
  }
  static showSnackBar2({required String title, required BuildContext context}) {
    return toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
      autoCloseDuration: const Duration(seconds: 5),
      title: Text('Your Email has been verified successfully!'),
      // you can also use RichText widget for title and description parameters
      alignment: Alignment.topRight,
      direction: TextDirection.ltr,
      animationDuration: const Duration(milliseconds: 300),
      animationBuilder: (context, animation, alignment, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      icon: const Icon(Icons.check),
      backgroundColor: Color(0xff5915FC),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      borderRadius: BorderRadius.circular(12),
      showProgressBar: true,
      closeButtonShowType: CloseButtonShowType.onHover,
      closeOnClick: false,
      pauseOnHover: true,
      dragToClose: true,
      applyBlurEffect: true,
      callbacks: ToastificationCallbacks(
        onTap: (toastItem) => print('Toast ${toastItem.id} tapped'),
        onCloseButtonTap: (toastItem) => print('Toast ${toastItem.id} close button tapped'),
        onAutoCompleteCompleted: (toastItem) => print('Toast ${toastItem.id} auto complete completed'),
        onDismissed: (toastItem) => print('Toast ${toastItem.id} dismissed'),
      ),
    );
    // scaffoldKey.currentState?.showSnackBar(SnackBar(
    //   content: ConstrainedBox(
    //     constraints: const BoxConstraints(maxHeight: 75, minHeight: 75),
    //     child: Row(
    //       children: [
    //         FittedBox(
    //           fit: BoxFit.fitHeight,
    //           child: DecoratedBox(
    //             decoration: BoxDecoration(color: color),
    //             child: ConstrainedBox(
    //               constraints: const BoxConstraints(maxHeight: 120, minHeight: 75, maxWidth: 8, minWidth: 8),
    //             ),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 10,
    //         ),
    //         Icon(
    //           icon == null
    //               ? Icons.info_outline_rounded
    //               : IconData(
    //             int.parse(icon),
    //             fontFamily: 'MaterialIcons',
    //           ),
    //           color: color,
    //         ),
    //         const SizedBox(
    //           width: 10,
    //         ),
    //         Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Text(
    //                 title,
    //                 style: AppStyles.appTextStyles(
    //                     color:Theme.of(scaffoldKey.currentState!.context).primaryColor.withOpacity(0.8),
    //                     fontWeight: AppFontStyles.fontWeight600,
    //                     fontSize: AppFontStyles.body),
    //               ),
    //               Text(
    //                 text ?? Languages.get(scaffoldKey.currentState!.context, key: 'something_went_wrong'),
    //                 style: AppStyles.appTextStyles(
    //                     color:Theme.of(scaffoldKey.currentState!.context).primaryColor.withOpacity(0.8),
    //                     fontWeight: AppFontStyles.fontWeight400,
    //                     fontSize: AppFontStyles.body2),
    //               )
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   padding: EdgeInsets.zero,
    //   behavior: SnackBarBehavior.floating,
    //   dismissDirection: DismissDirection.horizontal,
    //   elevation: 10,
    //   backgroundColor: Theme.of(scaffoldKey.currentState!.context).primaryColor,
    //   margin: const EdgeInsets.all(20),
    // ));
  }

  static showMainSnack({required BuildContext context, required String title}) {
    FToast fToast = FToast();
    fToast.init(context);
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            FontAwesomeIcons.circleCheck,
            color: Colors.white,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
    fToast.showToast(
      child: toast,
      toastDuration: const Duration(seconds: 3),
      gravity: ToastGravity.TOP,
    );
  }
}
//
//   static addressBottomSheet(
//       context, {
//         required TextEditingController address,
//         required TextEditingController street,
//         required TextEditingController zipcode,
//         required TextEditingController floor,
//         required TextEditingController building,
//         required TextEditingController intercom,
//         required GlobalKey<FormState> addressFormKey,
//         required TextEditingController location,
//         Function()? action,
//       }) {
//     bottomSheet(context,
//         child: Expanded(
//           child: BlocConsumer<SearchBloc, SearchState>(listenWhen: (previous, current) {
//             return previous != current;
//           }, listener: (context, state) {
//             if (state is SearchSuccess) {
//             //   BlocProvider.of<UserBloc>(context).selectedCity = null;
//             //   BlocProvider.of<UserBloc>(context).selectedCountry = Globals.countries.where((element) => element.id == Globals.searchResult!.data!.country!.id!).firstOrNull;
//             //   BlocProvider.of<UserBloc>(context).add(UserEvent.cities(id: Globals.searchResult!.data!.country!.id!.toString()));
//             // }
//             // address.text = BlocProvider.of<MapsCubit>(context).locationDetails ?? '';
//             // street.text = BlocProvider.of<MapsCubit>(context).placemarks?[0].street ?? '';
//             // zipcode.text = BlocProvider.of<MapsCubit>(context).placemarks?[0].postalCode ?? '';
//           }, builder: (context, state) {
//             return Form(
//               key: addressFormKey,
//               child: ListView(
//                 physics: ClampingScrollPhysics(),
//                 padding: EdgeInsets.only(left: 20, bottom: MediaQuery.of(context).viewInsets.bottom, right: 20, top: 20),
//                 children: [
//                   PrimaryButton(
//                     title: Languages.get(context, key: 'pick_location'),
//                     action: () {
//                       AutoRouter.of(context).pushNamed(Routes.get2(key: Routes.map, value: [Routes.sign_up]));
//                     },
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   KTextFormField(
//                     keyboardType: TextInputType.text,
//                     hintText: Languages.get(context, key: 'address'),
//                     controller: address,
//                     readOnly: true,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return Languages.get(context, key: 'address_required');
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   BlocBuilder<UserBloc, UserState>(
//                     builder: (context, state) {
//                       BlocProvider.of<UserBloc>(context).selectedCountry = Globals.searchResult?.data.country.id != null
//                           ? Globals.countries.where((element) => element.id == Globals.searchResult!.data!.country!.id!).firstOrNull
//                           : BlocProvider.of<UserBloc>(context).selectedCountry;
//                       return SingleDropdown<CountriesModel>(
//                         hint: Languages.get(context, key: 'select_country'),
//                         icon: Icon(
//                           Icons.keyboard_arrow_down_sharp,
//                           color: themeInject.getColor(ColorKeys.primary_btn_bg),
//                           size: 24,
//                         ),
//                         selectedItemBuilder: (BuildContext context) {
//                           return Globals.countries.map<Widget>((CountriesModel item) {
//                             return Row(
//                               children: [
//                                 item.flag is List
//                                     ? const SizedBox.shrink()
//                                     : item.flag == null
//                                     ? const SizedBox.shrink()
//                                     : CachedNetworkSVGImage(
//                                   item.flag['svg'],
//                                   placeholder: Container(
//                                     color: Colors.grey[300],
//                                   ),
//                                   width: 30,
//                                   height: 20,
//                                   fit: BoxFit.fill,
//                                   errorWidget: SvgPicture.asset(
//                                     AssetString.logo,
//                                     color: themeInject.getColor(ColorKeys.feature_value_bg),
//                                     fit: BoxFit.scaleDown,
//                                     width: 20,
//                                   ),
//                                   fadeDuration: const Duration(milliseconds: 500),
//                                 ),
//                                 const SizedBox(
//                                   width: 4,
//                                 ),
//                                 Text(
//                                   item.name?.value ?? '',
//                                   style: AppStyles.appTextStyles(
//                                       color: themeInject.getColor(ColorKeys.caption_firstPart), fontWeight: AppFontStyles.fontWeight400, fontSize: AppFontStyles.title2),
//                                 ),
//                               ],
//                             );
//                           }).toList();
//                         },
//                         value: BlocProvider.of<UserBloc>(context).selectedCountry,
//                         dropdownItems: Globals.countries
//                             .map(
//                               (e) => SingleDropdown.itemView<CountriesModel>(
//                             direction: CacheHelper.getData(key: 'lang') == 'ar' ? TextDirection.rtl : TextDirection.ltr,
//                             icon: e.flag is List
//                                 ? null
//                                 : e.flag == null
//                                 ? null
//                                 : CachedNetworkSVGImage(
//                               e.flag['svg'],
//                               placeholder: Container(
//                                 color: Colors.grey[300],
//                               ),
//                               width: 30,
//                               height: 20,
//                               fit: BoxFit.fill,
//                               errorWidget: SvgPicture.asset(
//                                 AssetString.logo,
//                                 color: themeInject.getColor(ColorKeys.feature_value_bg),
//                                 fit: BoxFit.scaleDown,
//                                 width: 20,
//                               ),
//                               fadeDuration: const Duration(milliseconds: 500),
//                             ),
//                             value: e,
//                             text: e.name?.value ?? '',
//                           ),
//                         )
//                             .toList(),
//                         onChanged: (value) {
//                           BlocProvider.of<UserBloc>(context).selectedCity = null;
//                           Globals.searchResult?.data.country.id = null;
//                           Globals.searchResult?.data.city.id = null;
//                           address.text = '';
//                           street.text = '';
//                           zipcode.text = '';
//                           floor.text = '';
//                           building.text = '';
//                           intercom.text = '';
//                           BlocProvider.of<UserBloc>(context).add(UserEvent.select(
//                             value,
//                           ));
//                         },
//                         onSearch: (item) {
//                           return item?.name?.value ?? '';
//                         },
//                       );
//                     },
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   BlocBuilder<UserBloc, UserState>(
//                     builder: (context, state) {
//                       final model = BlocProvider.of<UserBloc>(context).citiesList;
//                       BlocProvider.of<UserBloc>(context).selectedCity = Globals.searchResult?.data.city.id != null && model.isNotEmpty
//                           ? model.where((element) => element.id == Globals.searchResult!.data!.city!.id!).firstOrNull
//                           : BlocProvider.of<UserBloc>(context).selectedCity;
//                       return SingleDropdown<CitiesModel>(
//                         hint: state is UserCityLoading ? Languages.get(context, key: 'loading....') : Languages.get(context, key: 'select_city'),
//                         value: BlocProvider.of<UserBloc>(context).selectedCity,
//                         icon: Icon(
//                           Icons.keyboard_arrow_down_sharp,
//                           color: themeInject.getColor(ColorKeys.primary_btn_bg),
//                           size: 24,
//                         ),
//                         selectedItemBuilder: (BuildContext context) {
//                           return model.map<Widget>((CitiesModel item) {
//                             return Align(
//                               alignment: AlignmentDirectional.centerStart,
//                               child: Text(
//                                 item.name?.value ?? '',
//                                 style: AppStyles.appTextStyles(
//                                     color: themeInject.getColor(ColorKeys.caption_firstPart), fontWeight: AppFontStyles.fontWeight400, fontSize: AppFontStyles.title2),
//                               ),
//                             );
//                           }).toList();
//                         },
//                         dropdownItems: model
//                             .map(
//                               (e) => SingleDropdown.itemView<CitiesModel>(
//                             direction: CacheHelper.getData(key: 'lang') == 'ar' ? TextDirection.rtl : TextDirection.ltr,
//                             value: e,
//                             text: e.name?.value ?? '',
//                           ),
//                         )
//                             .toList(),
//                         onChanged: (value) {
//                           Globals.searchResult?.data.city.id = null;
//
//                           BlocProvider.of<UserBloc>(context).add(UserEvent.selectCity(city: value));
//                         },
//                         onSearch: (item) {
//                           return item?.name?.value ?? "";
//                         },
//                       );
//                     },
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   KTextFormField(
//                     keyboardType: TextInputType.text,
//                     labelText: Languages.get(context, key: 'street'),
//                     controller: street,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return Languages.get(context, key: 'street_required');
//                       }
//                       return null;
//                     },
//                   ),
//                   KTextFormField(
//                     keyboardType: TextInputType.text,
//                     labelText: Languages.get(context, key: 'building'),
//                     controller: building,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return Languages.get(context, key: 'building_required');
//                       }
//                       return null;
//                     },
//                   ),
//                   KTextFormField(
//                     keyboardType: TextInputType.text,
//                     labelText: Languages.get(context, key: 'zip_code'),
//                     controller: zipcode,
//                   ),
//                   KTextFormField(
//                     keyboardType: TextInputType.text,
//                     labelText: Languages.get(context, key: 'intercom'),
//                     controller: intercom,
//                   ),
//                   KTextFormField(
//                     keyboardType: TextInputType.text,
//                     labelText: Languages.get(context, key: 'floor'),
//                     controller: floor,
//                   ),
//                 ],
//               ),
//             );
//           }),
//         ),
//         confirmAction: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: PrimaryButton(
//               title: Languages.get(context, key: 'confirm'),
//               action: action ??
//                       () {
//                     if (addressFormKey.currentState!.validate()) {
//                       location.text = address.text;
//                       AutoRouter.of(context).pop();
//                     }
//                   },
//             )),
//         title: Languages.get(context, key: 'location'));
//   }
//
//   static scheduleDialog(context, {TextEditingController? controller}) {
//     Navigator.push(
//         context,
//         showPicker(
//           context: context,
//           value: Time(hour: 12, minute: 30, second: 20),
//           sunrise: const TimeOfDay(hour: 6, minute: 0),
//           // optional
//           sunset: const TimeOfDay(hour: 18, minute: 0),
//           // optional
//           duskSpanInMinutes: 120,
//           okStyle: AppStyles.appTextStyles(
//             color: themeInject.getColor(ColorKeys.primary_btn_bg),
//             fontWeight: AppFontStyles.fontWeight600,
//             fontSize: AppFontStyles.body,
//           ),
//           cancelStyle: AppStyles.appTextStyles(
//             color: themeInject.getColor(ColorKeys.primary_btn_bg),
//             fontWeight: AppFontStyles.fontWeight600,
//             fontSize: AppFontStyles.body,
//           ),
//           accentColor: themeInject.getColor(ColorKeys.primary_btn_bg),
//
//           onChange: (p0) {
//             print('${p0.hour}:${p0.minute}:${p0.second} ${p0.period.name}');
//             controller?.text = '${p0.hour}:${p0.minute}:${p0.second} ${p0.period.name}';
//           },
//         ));
//   }
//
//   static Duration parseDuration(String durationString) {
//     List<String> components = durationString.split(':');
//
//     int minutes = int.parse(components[0]);
//     int seconds = int.parse(components[1]);
//
//     return Duration(minutes: minutes, seconds: seconds);
//   }
//
//   static internalSearch(List list, String key) {
//     print(list.where((element) => (element.name?.value?.toLowerCase()).contains(key.toLowerCase()) ?? false).toList());
//     return list.where((element) => (element.name?.value?.toLowerCase()).contains(key.toLowerCase()) ?? false).toList();
//   }
//
