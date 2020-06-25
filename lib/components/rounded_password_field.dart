import 'package:flutter/material.dart';
import 'package:flutter_app_login_signup_page/components/text_field_container.dart';
import 'package:flutter_app_login_signup_page/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>onChanged;
  const RoundedPasswordField({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none
        ),
      ),
    );
  }
}