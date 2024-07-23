import 'package:flutter/material.dart';

class Opd extends StatelessWidget {
  const Opd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('OPD', style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Center(
        child: Text('Welcome to OPD', style: TextStyle(
        color: Colors.black, 
        fontSize: 30
        ),),
      ),
    );
  }
}