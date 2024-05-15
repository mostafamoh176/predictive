import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:predictive_task/features/table_show_feat/business_logic/table_bloc.dart';
import '../core/di/dependency_injection.dart';
import '../core/resources/styles/app_colors.dart';
import '../core/routes/app_router.dart';


final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TableBloc>(),
      child: ScreenUtilInit(
        designSize: const Size(393, 1325),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            locale: const Locale("en"),
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            builder: EasyLoading.init(),
            routerConfig: appRouter.config(),
          );
        },
      ),
    );
  }
}
