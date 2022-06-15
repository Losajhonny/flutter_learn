
import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // color primario
    primaryColor: Colors.indigo,
    
    // app bar tema
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    // tema de text button
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary
      )
    ),

    // tema de floating actionn button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    // si todos los elevated button tienen la misma configuracion
    // sino mejor configurar cada uno
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 100
      )
    )
  );

  // static final ThemeData darkTheme = ThemeData.dark().copyWith(
  //   // color primario
  //   primaryColor: Colors.indigo,
    
  //   // app bar tema
  //   appBarTheme: const AppBarTheme(
  //     color: primary,
  //     elevation: 0
  //   ),

  //   scaffoldBackgroundColor: Colors.black,
  // );

}
