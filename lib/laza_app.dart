import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:get/get.dart';
import 'package:laza/features/auth/view/screens/create_account_screen.dart';
import 'routes/app_pages.dart';


class LazaApp extends StatelessWidget {
  const LazaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
       // initialBinding: AuthBinding(),
        enableLog: true,
        getPages: AppPages.routes,
        initialRoute: Routes.CREATEACCOUNTSCREEN,
        unknownRoute: GetPage(
            name: Routes.CREATEACCOUNTSCREEN,
            page: () {
              return const CreateAccountScreen();
            }),
        title: 'Doc App',
        theme: ThemeData(
            primaryColor: MyColor.mainColor,
            scaffoldBackgroundColor: Colors.white,
            brightness: Brightness.light
        ),
        debugShowCheckedModeBanner: false,
      // initialRoute: Routes.mainScreen,
      ),
    );
  }
}
