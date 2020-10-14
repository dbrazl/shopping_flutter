import 'package:flutter/material.dart';
import './pages/Home/Home.dart';
import './pages/Cart/Cart.dart';
import './pages/SignIn/SignIn.dart';
import './components/NavigatorBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: TabBarView(
              children: <Widget>[
                Home(),
                Cart(),
                SignIn(),
              ],
            ),
          ),
          bottomNavigationBar: NavigatorBar(),
        ),
      ),
    );
  }
}
