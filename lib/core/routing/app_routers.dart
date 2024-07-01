import 'package:flutter/material.dart';
import 'package:gallery/core/routing/routes.dart';
import 'package:gallery/features/home/ui/screens/login.dart';

import '../../features/home/ui/screens/onbording/onboarding.dart';

class AppRouters {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("Not found this route ${settings.name}"),
                  ),
                ));
    }
  }
}
