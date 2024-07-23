import 'package:flutter/material.dart';

class Radiology extends StatelessWidget {
  const Radiology({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('Radiology', style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Center(
        child: Text('Welcome to Radiology', style: TextStyle(
        color: Colors.black, 
        fontSize: 30
        ),),
      ),
    );
  }
}