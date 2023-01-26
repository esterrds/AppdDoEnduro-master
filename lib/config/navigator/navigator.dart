import 'package:mangue_laps/config/navigator/routes.dart';
import 'package:mangue_laps/presentation/add_car.dart';
import 'package:mangue_laps/presentation/home_page.dart';
import 'package:mangue_laps/presentation/nav_bar.dart';
import 'package:mangue_laps/presentation/monit/view_page.dart';
import 'package:flutter/material.dart';

//chamada das páginas

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final Object? args = settings.arguments;

    switch (settings.name) {
      case initRoute:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case carAdder:
        return MaterialPageRoute(builder: (_) => CarAdder());
      case navBar:
        return MaterialPageRoute(builder: (_) => const NavBar());
      case viewPage:
        return MaterialPageRoute(builder: (_) => const ViewPage());
      default:
        return MaterialPageRoute(builder: (_) => const MyHomePage());
    }
  }
}
