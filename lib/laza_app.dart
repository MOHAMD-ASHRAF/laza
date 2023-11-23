import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/features/home/ui/screens/main_screen.dart';

class LazaApp extends StatelessWidget {
  //final AppRouter appRouter;

  const LazaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
       // onGenerateRoute: appRouter.generateRoute,
        title: 'Doc App',
        theme: ThemeData(
           // primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
       // initialRoute: Routes.onBoardingScreen,
        home: const MainScreen(),
      ),
    );
  }
}
