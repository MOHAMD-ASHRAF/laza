import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/core/theming/color/my_color.dart';
import 'package:laza/features/home/logic/laza_cubit.dart';



import 'features/home/ui/screens/main_screen.dart';


class LazaApp extends StatelessWidget {
  final AppRouter appRouter;

  const LazaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
            BlocProvider(create: (context) => LazaCubit()..getAllProducts()),
        ],
        child: MaterialApp(
         onGenerateRoute: appRouter.generateRoute,
          title: 'Doc App',
          theme: ThemeData(
              primaryColor: MyColor.mainColor,
              scaffoldBackgroundColor: Colors.white
          ),
          debugShowCheckedModeBanner: false,
        // initialRoute: Routes.mainScreen,
          home: MainScreen(),
        ),
      ),
    );
  }
}
