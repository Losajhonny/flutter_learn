import 'package:flutter/material.dart';
import 'package:flutter_learn/router/app_routes.dart';
import 'package:flutter_learn/theme/app_theme.dart';

// se debe buscar que el main este limpio

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // desaperecer debug en la app
      debugShowCheckedModeBanner: false,
      title: 'Material app',

      // ruta inicial, debe existir en routes
      // si tiene mas de 5 paginas
      // se puede manejar de otra manera
      // centralizando los datos
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),

      // si un route no existe este captura el evento
      // entonces se puede dirigir a otra ruta por ejemplo
      // not found page

      // onGenerateRoute se define como (settings) => algo
      // pero como AppRoutes.onGenerateRoute recibe el mismo parametro
      // se puede dejar asi
      onGenerateRoute: AppRoutes.onGenerateRoute,

      // tema

      // hace una copia de ThemeData.light
      theme: AppTheme.lightTheme,
    );
  }
}
