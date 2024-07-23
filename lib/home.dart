import 'package:flutter/material.dart';
import 'package:flutter_task/opd.dart';
import 'package:flutter_task/pathology.dart';
import 'package:flutter_task/pharmacy.dart';
import 'package:flutter_task/radiology.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        
        child: ListView(
          children: [
            Container(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3WEmfJCME77ZGymWrlJkXRv5bWg9QQmQEzw&s'),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Olivier Thomas', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                        Text('1', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  
                  ],
                ),
              ),
              
            ),
            // AppBar(
            //   backgroundColor: Colors.blue,
            //   title: Text('Smart Hospital'),
            //   actions: [
            //     Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: Icon(Icons.add_alert_sharp, color: Colors.white,),
            //     )
            //   ],

            // ),
             ListTile(
              leading: Icon(Icons.home),
              title: Text('Home', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('My Appointment', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('OPD', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Opd()));
              },
            ),
             ListTile(
              leading: Icon(Icons.hotel),
              title: Text('IPD', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.local_pharmacy),
              title: Text('Pharmacy', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pharmacy()));
              },
            ),
             ListTile(
              leading: Icon(Icons.warning_amber_outlined),
              title: Text('Pathology', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pathology()));
              },
            ),
             ListTile(
              leading: Icon(Icons.zoom_in),
              title: Text('Radiology', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Radiology()));
              },
            ),
             ListTile(
              leading: Icon(Icons.fire_truck),
              title: Text('Ambulance', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.water_drop),
              title: Text('Blood Bank', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {},
            ),
             ListTile(
              leading: Icon(Icons.videocam_sharp),
              title: Text('Live Consultation', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('Smart Hospital', style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add_alert_sharp,),
          )
        ],
      ),
      body: Center(
        child: Text('Welcome to Home Page', style: TextStyle(
        color: Colors.black, 
        fontSize: 30
        ),),
      ),
    );
  }
}