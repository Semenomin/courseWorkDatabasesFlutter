import 'package:flutter/material.dart';
import 'package:iucome/screen/authorizationScreen.dart';
import 'package:iucome/screen/currencyScreen.dart';
import 'package:iucome/screen/home.dart';
import 'package:iucome/database/db.dart';
void main() {
  runApp(IucomeApp());
}

class IucomeApp extends StatelessWidget {
  const IucomeApp();
  static const String authorizationRoute = "/authorization";
  static const String homeRoute= "/lib";
  static const String currencyRoute = "/curPage";
  @override
  Widget build(BuildContext context) {
    DaBa.connectDB();
    return MaterialApp(
      title: 'Iucome',
      home: AuthorizationPage(),
      initialRoute: authorizationRoute,
      routes: <String,WidgetBuilder>{
        homeRoute: (context) => BottomTabbar(),
        authorizationRoute: (context) => const AuthorizationPage(),
        currencyRoute: (context) => const CurPage()
      },
    );
  }
}