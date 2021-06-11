import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
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
              children: [
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
                ElevatedButton(onPressed: null, child: Text('Elevated Button')),
              ],
            ),
          ),],
        ),
        floatingActionButton:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
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
          ],
        ),
    ),
));
