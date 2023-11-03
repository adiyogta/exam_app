import 'dart:async';
import 'package:exam_app/dll.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: LoginPg()
      )
    );
  }
}

class SplashSc extends StatefulWidget {
  const SplashSc({super.key});

  @override
  State<SplashSc> createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => LoginPg())));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LoginPg extends StatefulWidget {
  const LoginPg({super.key});

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: biru3,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0,1],
              colors: [ungu.withOpacity(0.3),merah.withOpacity(0.3
              )])
          ),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: sizeW(context)*0.45,horizontal: sizeW(context)*0.1),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              color: putih
            ),
            child: Text('p'),
          ),
        ),
      ),
    );
  }
}