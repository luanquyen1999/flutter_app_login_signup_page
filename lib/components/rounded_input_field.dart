import 'package:flutter/material.dart';
import 'package:flutter_app_login_signup_page/components/text_field_container.dart';
import 'package:flutter_app_login_signup_page/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String>onchanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon =Icons.person,
    this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}