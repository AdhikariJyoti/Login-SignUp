import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginapp/Screens/Login/login_screen.dart';
import 'package:loginapp/Screens/Signup/components/Background.dart';
import 'package:loginapp/Screens/Signup/components/or_divider.dart';
import 'package:loginapp/Screens/Signup/components/social_icon.dart';
import 'package:loginapp/components/already_have_an_account_check.dart';
import 'package:loginapp/components/rounded_button.dart';
import 'package:loginapp/components/rounded_input_field.dart';
import 'package:loginapp/components/rounded_password_field.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
            // SizedBox(
            //   height: size.height * 0.03,
            // ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
                text: "Signup",
                press: () {},
                color: kPrimaryColor,
                textColor: Colors.white),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            orDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                    iconSrc: "assets/icons/google_plus.svg", press: () {}),

                SocialIcon(
                    iconSrc: "assets/icons/twitter.svg", press: () {}),
                SocialIcon(
                    iconSrc: "assets/icons/facebook.svg", press: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
