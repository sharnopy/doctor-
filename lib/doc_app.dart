import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery/core/routing/app_routers.dart';
import 'package:gallery/core/theming/colors.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouters appRouter;

  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: SafeArea(
        child: MaterialApp(
          title: "Doc App",
          theme: ThemeData(
            primaryColor: ColorsManger.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
