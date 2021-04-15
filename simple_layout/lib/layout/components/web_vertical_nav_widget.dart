import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebVerticalNavWidget extends StatefulWidget {
  @override
  _WebVerticalNavWidgetState createState() => _WebVerticalNavWidgetState();
}

class _WebVerticalNavWidgetState extends State<WebVerticalNavWidget> {
  int _buttonCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: 110,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 2,
              offset: Offset(0.5, 0.0),
              spreadRadius: 2)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _logoWidget(),
          SizedBox(height: 30),
          _colButtons(),
          Spacer(),
          _logoutButton(),
        ],
      ),
    );
  }

  Widget _logoWidget() {
    return Container(
      width: 45,
      height: 45,
      child: Image.asset("assets/logo.png"),
    );
  }

  Widget _colSingleButton(
      {IconData icon, Color borderColor, Color iconColor, String title}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Container(
        width: 100,
        child: Row(
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(width: 10),
            Text(title)
          ],
        ),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 2,
              color: borderColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _colButtons() {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 0;
              });
            },
            child: _colSingleButton(
                title: 'Home',
                icon: Icons.widgets,
                iconColor:
                    _buttonCurrentIndex == 0 ? Colors.indigo : Colors.black,
                borderColor: _buttonCurrentIndex == 0
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  _buttonCurrentIndex = 1;
                });
              },
              child: _colSingleButton(
                  title: 'About',
                  icon: Icons.score,
                  iconColor:
                      _buttonCurrentIndex == 1 ? Colors.indigo : Colors.black,
                  borderColor: _buttonCurrentIndex == 1
                      ? Colors.deepOrange
                      : Colors.transparent)),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 2;
              });
            },
            child: _colSingleButton(
                title: 'User',
                icon: Icons.calendar_today,
                iconColor:
                    _buttonCurrentIndex == 2 ? Colors.indigo : Colors.black,
                borderColor: _buttonCurrentIndex == 2
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 3;
              });
            },
            child: _colSingleButton(
                title: 'About',
                icon: Icons.pages,
                iconColor:
                    _buttonCurrentIndex == 3 ? Colors.indigo : Colors.black,
                borderColor: _buttonCurrentIndex == 3
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 4;
              });
            },
            child: _colSingleButton(
                title: 'Settings',
                icon: Icons.message,
                iconColor:
                    _buttonCurrentIndex == 4 ? Colors.indigo : Colors.black,
                borderColor: _buttonCurrentIndex == 4
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _buttonCurrentIndex = 5;
              });
            },
            child: _colSingleButton(
                title: 'Info',
                icon: Icons.settings,
                iconColor:
                    _buttonCurrentIndex == 5 ? Colors.indigo : Colors.black,
                borderColor: _buttonCurrentIndex == 5
                    ? Colors.deepOrange
                    : Colors.transparent),
          ),
        ],
      ),
    );
  }

  Widget _logoutButton() {
    return Icon(Icons.exit_to_app);
  }
}
