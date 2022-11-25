import 'package:flutter/material.dart';
import 'package:fp9/play.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();

    next();
  }

  next() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return play();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xff588C73),
              Color(0xffF2E394),
              Color(0xffF2AE72),
              Color(0xffD96459)
            ])),
        child: Text("Tic-Tac-Toe",style: TextStyle(fontSize: 34,fontFamily: "OpenSans"),),
      ),
    );
  }
}
