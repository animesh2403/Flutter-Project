import 'package:demo/Screens/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:demo/Screens/FirstScreen.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 350,),
              Text('This is First screen'),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return SecondScreen();
                }));
              }, child: Text('Go to 2nd screen')
              ),
              SizedBox(height: 30),
              InkWell(
                  child: Icon(Icons.arrow_back) ,
                  onTap: (){
                    Navigator.pop(context);
                  }
              ),
            ],
          ),

        ),
      ),
    );
  }
}