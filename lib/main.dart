import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: StudCard(),
));

class StudCard extends StatefulWidget {
  @override
  _StudCardState createState() => _StudCardState();
}

class _StudCardState extends State<StudCard> {

  int achievementLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Student ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            achievementLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),
            Text(
              'Harshit Jain',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT ACHIEVEMENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),
            Text(
              '$achievementLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'harshit@gmail.com',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
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





