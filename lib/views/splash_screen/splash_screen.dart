import 'package:flutter/material.dart';
import 'package:quickcart/consts/consts.dart';
import 'package:quickcart/views/auth_screen/login_screen.dart';
import 'package:quickcart/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300)),
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          appname.text.xl4.bold.white.make(),
          5.heightBox,
          appversion.text.white.make(),
          const Spacer(),
          credits.text.bold.white.make(),
          30.heightBox
        ],
      )),
    );
  }
}
