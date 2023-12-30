import 'package:alvas_management/views/pages/acadamics/acadamics_page.dart';
import 'package:alvas_management/views/pages/clubs/clubs_page.dart';
import 'package:alvas_management/views/pages/home_page.dart';
import 'package:alvas_management/views/pages/library/library_page.dart';
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
      case '/acadamics':
        return MaterialPageRoute(builder: (context) => const AcadamicsPage());
      case '/clubs':
        return MaterialPageRoute(builder: (context) => const ClubPage());
      case '/library':
        return MaterialPageRoute(builder: (context) => const LibraryPage());
      default:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
    }
  }
}
