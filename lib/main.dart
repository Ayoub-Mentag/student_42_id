// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Student {
  var img;
  var name;
  var level;
  var schoolCity;
  var startDate;
  var endDate;
  var blackHole;
  var email;
  var tel;
  var website;

  Student(String img, String name, String level, String schoolCity, String startDate, String endDate, String blackHole, String email, String tel, String website)
  {
    this.img = img;
    this.name = name;
    this.level = level;
    this.schoolCity = schoolCity;
    this.startDate = startDate;
    this.endDate = endDate;
    this.blackHole = blackHole;
    this.email = email;
    this.tel = tel;
    this.website = website;
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}



class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Student> students = [
    Student('ibouaddi.png' ,'Ismail', '3', 'Khouribga', '2022-10-15', '2026-10-15', '180', 'ismail@gmail.com', '0612345678', 'ismail.me'),
    Student('amentag.png' ,'Ayoub', '3', 'Khouribga', '2022-10-14', '2026-10-14', '181', 'ayoub@gmail.com', '0687654321', 'ayoub.me'),
    Student('mafoukal.png' ,'Mohammed', '3', 'Khouribga', '2022-10-13', '2026-10-13', '182', 'mohammed@gmail.com', '0687546321', 'mohammed.me'),
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Student 42 ID'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (i > 0)
                  i -= 1;
                else {
                  i = 0;
                }
              });
            },
            child: Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (i < students.length - 1)
                  i += 1;
                else {
                  i = students.length - 1;
                }
              });
            },
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/${students[i].img}'),
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
              '${students[i].name}',
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
              '${students[i].level}',
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
              '${students[i].schoolCity}',
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
              '${students[i].startDate}',
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
              '${students[i].endDate}',
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
              '${students[i].blackHole} DAYS',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '${students[i].blackHole}',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '${students[i].tel}',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.web,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '${students[i].website}',
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
