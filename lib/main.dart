import 'dart:async';

import 'package:flutter/material.dart';
import 'package:teste2/login_page.dart';
import 'package:teste2/tela_acesso.dart';
import 'package:teste2/testeDropDownButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      title: 'ReservApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplahScreen(),
    );
  }
}

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => TelaAcesso()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Color(0xFFB7D2DE),
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/agendaGif.gif"),
      ),

    );
  }
}


