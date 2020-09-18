import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste Clip"),
      ),
      body:ClipPath(
        clipper: Myclipper(),
        child:  Container(
          height: 400,
          color: Colors.red,

        ),
      )

    );
  }
}

class Myclipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path p =Path();

    p.lineTo(0, size.height);
    p.lineTo(size.width, 0);
    return p;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }


}
