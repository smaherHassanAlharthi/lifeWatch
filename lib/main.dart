import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(
    new MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "SA"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "SA"), // OR Locale('ar', 'AE') OR Other RTL locales,
      //themeMode: ThemeMode.dark ,
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      //theme: myThemeData,
      home:new splashScreen(),
    ));