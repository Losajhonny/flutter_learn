import 'package:flutter/material.dart';
import 'package:flutter_learn/router/models.dart';
import 'package:flutter_learn/router/screens.dart';


class AppRoutes {

  // si elnombre de clase no tiene
  // un _ al inicio quiere decir
  // que puedo importarlo

  // centralizar las rutas
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'List view 1', screen: const ListView1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'List view 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
  ];

  // por el momento todo es estatico
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
    };

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route: (BuildContext context) => option.screen });
    }

    return appRoutes;
  }

  // se puede manejar estas rutas
  // pero probemos de otra manera
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return  MaterialPageRoute(
      builder: (context) => const AlertScreen()
    );
  }

}
