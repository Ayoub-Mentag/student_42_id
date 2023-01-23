// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Student 42 ID'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Ayoub Mentag',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '3.4',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'SCHOOL CITY',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'KHOURIBGA',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'START DATE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '2022-10-01',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'END DATE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '2026-01-23',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'BLACK HOLE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '180 DAYS',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'amentag@student.1337.ma',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '+212 6 53 09 36 20',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.web,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  'ayoubmentag.me',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
