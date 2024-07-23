import 'package:flutter/material.dart';

class Pathology extends StatelessWidget {
  const Pathology({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('Pathology', style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Center(child: Text('Welcome to Pathology', style: TextStyle(
        color: Colors.black, 
        fontSize: 30
        ),),),
    );
  }
}