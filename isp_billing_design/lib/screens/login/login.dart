import 'package:flutter/material.dart';
import 'package:isp_billing_design/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () => Navigator.pushNamed(context, Routes.home),
        child: Text(
          "Login",
        ),
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}
