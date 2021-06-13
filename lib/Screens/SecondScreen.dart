import 'package:flutter/material.dart';
import '../Global/global.dart' as GlobalData;
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 350),
                Text('Thank you ${GlobalData.name} !! for submitting',style: TextStyle(
                  fontSize: 18,
                ),),
                SizedBox(height: 30,),
                InkWell(
                child: Icon(Icons.arrow_back),
                onTap: (){
                Navigator.pop(context);})
              ],
            ),
            // child:

          ),
        ),
        TextFormField(
          onChanged: (value){
            setState(() {
              GlobalData.name=value;
            });
          },
          decoration: InputDecoration(
            hintText: "Enter Your Name",
          ),
        ),
      ],
      ),
    );
  }
}
