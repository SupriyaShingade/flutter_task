import 'package:flutter/material.dart';
import 'package:flutter_task/home.dart';
import 'package:flutter_task/opd.dart';
import 'package:flutter_task/pathology.dart';
import 'package:flutter_task/pharmacy.dart';
import 'package:flutter_task/radiology.dart';

class NavigationBarPage extends StatefulWidget {
  NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {

   int myIndex = 0;
  
  List widgetList = [
    Home(),
    Opd(),
    Pharmacy(),
    Pathology(),
    Radiology(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index)
        {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
           
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital), 
              label: 'OPD'
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_pharmacy,), 
              label: 'Pharmacy'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.warning_amber_outlined,), 
              label: 'Pathology'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.zoom_in,), 
              label: 'Radiology'
            ),
        ],
        
        ),
    );
  }
}