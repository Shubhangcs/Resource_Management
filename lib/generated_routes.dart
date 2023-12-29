import 'package:alvas_management/views/pages/home_page.dart';
import 'package:alvas_management/views/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'views/pages/register_page.dart';

class Routes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/register':
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      case '/home':
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
    }
  }
}
