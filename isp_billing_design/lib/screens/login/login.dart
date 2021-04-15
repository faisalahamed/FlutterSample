import 'package:flutter/material.dart';
import 'package:isp_billing_design/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, Routes.dashboard),
        child: Text(
          "Login",
        ),
      ),
    );
  }
}
