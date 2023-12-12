
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/helpers/bloc_observer.dart';
import 'package:laza/core/helpers/dio_helper.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/laza_app.dart';

void main() async{
  await DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(LazaApp(appRouter: AppRouter(),));

}
