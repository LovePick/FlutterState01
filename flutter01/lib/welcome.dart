import 'package:flutter/material.dart';

class WelcomeManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomePage();
  }
}

class WelcomePage extends State<WelcomeManager> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildLabel() {
    return Text("Count: $_count");
  }

  Widget _buildButton() {
    return RaisedButton(
      onPressed: () {
        _tapOnButton();
      },
      child: Text('Tap Me'),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [_buildLabel(), _buildButton()],
    );
  }

  void _tapOnButton() {
    setState(() {
      _count += 1;
    });
  }
}
