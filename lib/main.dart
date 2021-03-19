import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: aboutMe(),
  ));
}

class aboutMe extends StatefulWidget {
  @override
  _aboutMeState createState() => _aboutMeState();
}

class _aboutMeState extends State<aboutMe> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text(
          'ABOUT ME',
          style: GoogleFonts.rajdhani(
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level = level + 1;
          });
        },
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image 2.jpeg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 100.0,
              color: Colors.grey,
            ),
            Container(
              child: Text(
                'NAME',
                style: GoogleFonts.athiti(fontSize: 20.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                'Harshvardhan Kadam',
                style: GoogleFonts.inconsolata(
                    color: Colors.purple[200], fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Text(
                'Birthday',
                style: GoogleFonts.athiti(fontSize: 20.0, color: Colors.white),
              ),
            ),
            Container(
              child: Text(
                'November 27,2001',
                style: GoogleFonts.inconsolata(
                    color: Colors.purple[200], fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone_android_rounded,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: Text(
                    '9082547007',
                    style: GoogleFonts.inconsolata(
                        color: Colors.purple[200],
                        letterSpacing: 1.0,
                        fontSize: 20.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  'Sample of Stateful Widget!',
                  style: GoogleFonts.athiti(fontSize: 20.0, color: Colors.white),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: Text(
                    '$level',
                    style: GoogleFonts.inconsolata(
                        color: Colors.purple[200],
                        letterSpacing: 0.5,
                        fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
