import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_login_signup_page/Screens/Login/login_screen.dart';
import 'package:flutter_app_login_signup_page/Screens/Signup/components/background.dart';
import 'package:flutter_app_login_signup_page/Screens/Signup/components/or_divider.dart';
import 'package:flutter_app_login_signup_page/Screens/Signup/components/socal_icon.dart';
import 'package:flutter_app_login_signup_page/components/already_have_an_account_acheck.dart';
import 'package:flutter_app_login_signup_page/components/rounded_button.dart';
import 'package:flutter_app_login_signup_page/components/rounded_input_field.dart';
import 'package:flutter_app_login_signup_page/components/rounded_password_field.dart';
import 'package:flutter_app_login_signup_page/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body3 extends StatelessWidget {
  final Widget child;

  const Body3({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text("SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: size.height*0.03),
              SvgPicture.asset(
                "assets/icons/signup.svg",
              height: size.height*0.35,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onchanged: (value){},
              ),
              RoundedPasswordField(
                onChanged: (value){},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: (){},
              ),
              SizedBox(height: size.height*0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                        },
                  ),
                  );
                  },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  SocalIcon(
                    IconSrc: "assets/icons/facebook.svg",
                    press: (){},
                  ),
                  SocalIcon(
                    IconSrc: "assets/icons/twitter.svg",
                    press: (){},
                  ),
                  SocalIcon(
                    IconSrc: "assets/icons/google-plus.svg",
                    press: (){},
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}

