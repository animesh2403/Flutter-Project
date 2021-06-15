import 'package:demo/Screens/FirstScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MY DEMO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(image: NetworkImage(
                            'https://yt3.ggpht.com/ytc/AAUvwng8vsKs2CDl14rjq7nArGUE5Aiuup5g0tn9JPtuHfM=s900-c-k-c0x00ffffff-no-rj')),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Profile',style: TextStyle(fontSize: 18),),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',style: TextStyle(fontSize: 18),),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Log Out',style: TextStyle(fontSize: 18),),
              onTap: null,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 20,),
          Icon(Icons.logout),
        ],
        title: Text('My app'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),//appBar: ,
      body: ListView(
        children: [
          Center(
            child: Column(
              children:<Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    labelText: 'Name',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    labelText: 'Email',
                  ),
                ),
                Text('This is Local Image',style: TextStyle(fontSize: 20),),
                Image.asset('assets/flutter.jpg',width: 200,height: 200,),
                Text('This is Network Image',style: TextStyle(fontSize: 20),),
                Image.network('https://yt3.ggpht.com/ytc/AAUvwng8vsKs2CDl14rjq7nArGUE5Aiuup5g0tn9JPtuHfM=s900-c-k-c0x00ffffff-no-rj',width: 200,height: 200,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return FirstScreen();
                  }));
                }, child: Text('Go to 1st screen')),
              ],
            ),
          ),],
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 15),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.black,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.cyanAccent,
            child: Icon(Icons.call),
          ),
          SizedBox(
            width: 200,
          ),
          InkWell(
              child: Icon(Icons.exit_to_app_rounded) ,
              onTap: (){
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}