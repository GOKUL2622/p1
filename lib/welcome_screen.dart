import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:p1/SignIn_screen.dart';
import 'package:p1/SignUp_screen.dart';
import 'package:p1/custom_button.dart';
import 'package:p1/custom_screen.dart';


class WelcomeScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return CustomScreen(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 300
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                    children: [
                      TextSpan(text: 'Welcome!\n'),
                      TextSpan(text: '\nEnter the details to your employee application', style: TextStyle(fontSize: 18))
                    ]
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: CustomButton(btnName: 'Sign in',onTap: SignInScreen(),color: Colors.transparent,textColor: Colors.white,)),
                    Expanded(
                        flex: 1,
                        child: CustomButton(btnName: 'Sign up',onTap: SignUpScreen(),color: Colors.white,textColor: Colors.black,))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}