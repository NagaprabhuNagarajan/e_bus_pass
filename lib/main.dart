import 'package:flutter/material.dart';
import 'package:e_bus_pass/screens/login_screen.dart';
import 'package:provider/provider.dart';
import '../../styles.dart' as styles;
import 'package:splash_screen_view/SplashScreenView.dart';

var initialRoute = "/login-screen";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreenView(
      navigateRoute: MyApp(
        initialRoute: initialRoute,
      ),
      duration: 3000,
      imageSize: 200,
      imageSrc: "assets/images/bus_ticket.gif",
      text: "E Bus Pass",
      textType: TextType.ScaleAnimatedText,
      textStyle: styles.ThemeText.boldWhite,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final String? initialRoute;

  const MyApp({super.key, this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e_bus_pass',
      initialRoute: initialRoute,
      routes: {
        '/login-screen': (context) => const LoginScreen(),
      },
    );
  }
}
