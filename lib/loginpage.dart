
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_task/add_appointment.dart';
import 'package:flutter_task/navigationbarpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  


  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

   bool _obscureText = true;
  IconData _suffixIcon = Icons.visibility_off;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
      _suffixIcon = _obscureText ? Icons.visibility_off : Icons.visibility;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              
              children: [ 
                Text('Smart Hospital'),
                SizedBox(height: 20,),
                TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.black,),
                    filled: true,
                    fillColor: Colors.grey[250],
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_open_sharp, color: Colors.black,),
                    filled: true,
                    fillColor: Colors.grey[250],
                    hintText: 'Password',
                    suffixIcon: IconButton(
          onPressed: _toggleVisibility,
          icon: Icon(_suffixIcon),
        ),
                    // IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide.none
                    )
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationBarPage()));
                  },
                  child: Text('LOGIN', style: TextStyle(color: Colors.white, fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ), 
                    backgroundColor: Colors.blue
                  ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddAppointment()));
                    },
                    child: Text('Book Appointment', style: TextStyle(color: Colors.white, fontSize: 13),),
                    style: ElevatedButton.styleFrom
                    (
                      minimumSize: Size(
                        20, 30),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      backgroundColor: Colors.blue
                    ),
                  ),  
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Forget Password', 
                    style: TextStyle
                    (
                      color: Colors.black, 
                      fontSize: 13),),
                    style: ElevatedButton.styleFrom
                    (
                      minimumSize: Size(
                        20, 30),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      // backgroundColor: Colors.blue
                    ),
                  ), Spacer(),
                  
                  Positioned(
                    
                    child: Row(
                      children: [
                        InkWell(
                          child: Text('Privacy Policy'),
                        ),
                        Spacer(),
                        InkWell(
                          child: Icon(Icons.language),
                        )
                      ],
                    ),
                  ) 
              ],
            ),
          ),
          
      ),
      
      
    );
  }
}