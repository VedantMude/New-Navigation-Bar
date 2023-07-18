import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:newnavbar/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homepage(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(

          padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 5.0),

          child: GNav(
            gap: 8,
            rippleColor: Colors.grey,
            hoverColor: Colors.green,
            tabBackgroundColor: Colors.black.withOpacity(0.1),
            color: Colors.grey[800],
            activeColor: Colors.red,
            




            duration: Duration(milliseconds: 500),
            tabs: [
              GButton(icon: Icons.home,
                text: "Home",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Homepage()));
                },
                
              ),
              GButton(icon: Icons.person,



              text: "Accouts",),
              GButton(icon: Icons.add,
              text: "Add",),
              GButton(icon: Icons.alarm,
                text: "Alarm",),


            ],
          ),
        ),


    );
  }
}

