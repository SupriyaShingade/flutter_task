import 'package:flutter/material.dart';
import 'package:flutter_task/navigationbarpage.dart';

class AddAppointment extends StatefulWidget {
  const AddAppointment({super.key});

  @override
  State<AddAppointment> createState() => _AddAppointmentState();
}

class _AddAppointmentState extends State<AddAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: Text('Add Appointment', style: TextStyle(
          color: Colors.white
        ),),
      ),
      body:

      SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Circular Avatar
              Container(
                height: 120,
                color: Colors.blue,
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3WEmfJCME77ZGymWrlJkXRv5bWg9QQmQEzw&s'),
                  ),
                ),
              ),
              SizedBox(height: 20),
        
              // Booking Date
              Text('Date', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: TextEditingController(text: "2021-12-29"),
                decoration: InputDecoration(
                  // hintText: 'Enter booking date',
                  enabledBorder: const OutlineInputBorder
                  (
                    borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  // focusedBorder:  BorderSide(color: Colors.grey, width: 0.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
        
              // Specialist
              Text('Specialist', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: TextEditingController(text: "Cardiologist"),
                decoration: InputDecoration(
                  // hintText: 'Enter specialist',
                  enabledBorder: const OutlineInputBorder
                  (
                    borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    
                  ),
                ),
              ),
              SizedBox(height: 10),
        
              // Doctor
              Text('Doctor', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: TextEditingController(text: "Sonia Bush(9002)"),
                decoration: InputDecoration(
                  // hintText: 'Enter doctor',
                  enabledBorder: const OutlineInputBorder
                  (
                    borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
        
              // Shift
              Text('Shift', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: TextEditingController(text: "Morning"),
                decoration: InputDecoration(
                  // hintText: 'Enter shift',
                  enabledBorder: const OutlineInputBorder
                  (
                    borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
        
              // Slots
              Text('Slots', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: TextEditingController(text: "06:00 AM-08:30 AM"),
                decoration: InputDecoration(
                  // hintText: 'Enter slots',
                  enabledBorder: const OutlineInputBorder
                  (
                    borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
        
              // Time
              Text('Time', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                controller: TextEditingController(text: "07:40 AM"),
                decoration: InputDecoration(
                  // hintText: 'Enter time',
                  enabledBorder: const OutlineInputBorder
                  (
                    borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
        
              // Time
              Text('Appointment Priority', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextField(
                textAlignVertical: TextAlignVertical.center,
                controller: TextEditingController(text: "Normal"),
                decoration: InputDecoration(
                  // hintText: 'Enter time',
                  enabledBorder: const OutlineInputBorder
                  (
                    borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ),
              SizedBox(height: 50),
        
              // Confirm Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarPage()));
                  },
                  child: Text('Confirm', style: TextStyle(fontSize: 18, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}