import 'package:crud_product/add_product_screen.dart';
import 'package:crud_product/enter_otp_screen.dart';
import 'package:crud_product/login_screen.dart';
import 'package:crud_product/products_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/enterotp': (context) => EnterOtpScreen(),
        '/products': (context) => ProductScreen(),
        '/addproduct': (context) => AddProductScreen(),
      },
    );
  }
}
