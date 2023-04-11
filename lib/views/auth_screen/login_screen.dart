import 'package:flutter/material.dart';
import 'package:quickcart/consts/consts.dart';
import 'package:quickcart/consts/lists.dart';
import 'package:quickcart/views/auth_screen/signup_screen.dart';
import 'package:quickcart/views/home_screen/home_screen.dart';
import 'package:quickcart/widgets_common/applogo_widget.dart';
import 'package:quickcart/widgets_common/bg_widget.dart';
import 'package:quickcart/widgets_common/custom_textfield.dart';
import 'package:quickcart/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            // Logo and Hero Text
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            loginHero.text.fontFamily(bold).white.size(18).make(),
            15.heightBox,

            // Input forms
            Column(
              children: [
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),

                // Forgot Password?
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPass.text.make(),
                    )),
                5.heightBox,

                // Login Button
                ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,

                // Signup Button
                ourButton(
                    color: lightGolden,
                    title: signup,
                    textColor: redColor,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    }).box.width(context.screenWidth - 50).make(),

                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,

                // Social Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          )),
                ),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
