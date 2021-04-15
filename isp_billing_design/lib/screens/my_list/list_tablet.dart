import 'package:flutter/material.dart';
import 'package:isp_billing_design/routes.dart';

class ListTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, Routes.list,
            arguments: {'itemNumber': 23}),
        child: Text(
          "List tab",
        ),
      ),
    );
  }
}
