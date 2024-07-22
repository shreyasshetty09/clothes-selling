import 'package:clothes/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'forgot_password_page.dart';
import 'role_page.dart';
import 'seller_page.dart';
import 'customer_page.dart';
import 'checkout_page.dart';
import 'package:firebase_app_check/firebase_app_check.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/forgot-password': (context) => ForgotPasswordPage(),
        '/role': (context) => RolePage(),
        '/seller': (context) => SellerPage(),
        '/customer': (context) => CustomerPage(),
        '/CheckoutPage':(context) => CheckoutPage(cart: {},),
      },
    );
  }
}
