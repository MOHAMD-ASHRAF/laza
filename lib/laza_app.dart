import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/core/routing/routes.dart';


class LazaApp extends StatelessWidget {
  final AppRouter appRouter;

  const LazaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
       onGenerateRoute: appRouter.generateRoute,
        title: 'Doc App',
        theme: ThemeData(
           // primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
       initialRoute: Routes.mainScreen,
      ),
    );
  }
}
