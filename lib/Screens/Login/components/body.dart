import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_login_signup_page/Screens/Login/components/background.dart';
import 'package:flutter_app_login_signup_page/Screens/Signup/signup_screen.dart';
import 'package:flutter_app_login_signup_page/components/already_have_an_account_acheck.dart';
import 'package:flutter_app_login_signup_page/components/rounded_button.dart';
import 'package:flutter_app_login_signup_page/components/rounded_input_field.dart';
import 'package:flutter_app_login_signup_page/components/rounded_password_field.dart';
import 'package:flutter_app_login_signup_page/components/text_field_container.dart';
import 'package:flutter_app_login_signup_page/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body2 extends StatelessWidget {
  const Body2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text(
                "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height*0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onchanged: (value){},
            ),
            RoundedPasswordField(
              onChanged: (Value){},
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            RoundedButton(
              text:"LOGIN",
              press: (){},
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context){
                      return SignUpScreen();
                      },
                  ),
                );
                },
            )
          ],
        ),
      ),
    );
  }
}







