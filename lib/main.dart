import 'package:flutter/material.dart';
import 'package:shop_cupertino/screens/home/home_page.dart';
import 'style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          accentColor: Colors.black,
          backgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: AppBarTextStyle,
            headline5: TitleBarTextStyle,
            bodyText2: PriceBarTextStyle,
          )),
      home: HomePage(),
    );
  }
}
