import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/features/auth/binding/auth_binding.dart';
import 'package:laza/features/auth/view/screens/create_account_screen.dart';
import 'package:get/get.dart';


class LazaApp extends StatelessWidget {
  final AppRouter appRouter;

  const LazaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        initialBinding: AuthBinding(),
       onGenerateRoute: appRouter.generateRoute,
        title: 'Doc App',
        theme: ThemeData(
            primaryColor: MyColor.mainColor,
            scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
      // initialRoute: Routes.mainScreen,
        home: const CreateAccountScreen(),
      ),
    );
  }
}
