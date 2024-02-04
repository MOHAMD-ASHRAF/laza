
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:laza/core/helpers/bloc_observer.dart';
import 'package:laza/core/helpers/dio_helper.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/features/auth/data/repository.dart';
import 'package:laza/firebase_options.dart';
import 'package:laza/laza_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepository()));
  await DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(LazaApp(appRouter: AppRouter(),));
}
