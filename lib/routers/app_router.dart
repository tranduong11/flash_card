import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static AppRouter? _instance;

  static AppRouter get instance {
    _instance ??= AppRouter._();
    return _instance!;
  }

  MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<dynamic>(
      settings: settings,
      builder: (BuildContext context) {
        return router(
          context: context,
          routeName: settings.name!,
          data: settings.arguments,
        );
      },
    );
  }

  Widget router({required BuildContext context, required String routeName, Object? data}) {
    switch (routeName) {
      // case AppRoutePath.splash:
      //   return MySplash();
      default:
        return SizedBox();
    }
  }
}
