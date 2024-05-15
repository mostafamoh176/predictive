import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
import 'core/bloc/observer_service.dart';
import 'core/di/dependency_injection.dart';
import 'core/shared/config/shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  setupGet();
  runApp(MyApp());
}
