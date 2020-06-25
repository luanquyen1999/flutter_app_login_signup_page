import 'package:flutter/material.dart';
import 'package:flutter_app_login_signup_page/constants.dart';

class TextFielContainer extends StatelessWidget {
  final Widget child;
  const TextFielContainer({
    Key key, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: child,
    );
  }
}