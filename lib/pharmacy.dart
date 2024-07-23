import 'package:flutter/material.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('Pharmacy', style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Center(
        child: Text('Welcome to Pharmacy', style: TextStyle(
        color: Colors.black, 
        fontSize: 30
        ),),
      ),
    );
  }
}