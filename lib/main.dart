import 'dart:html';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:myapp/NavBar/Navbar.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffa8edea), Color(0xfffed6e3)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Column(
          children: [
            Navbar(),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "EDUCATION TAB",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                    fontSize: 50),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              "Select from the following subjects",
              style: GoogleFonts.montserrat(
                color: Colors.blue,
              ),
            )),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 1,
              indent: 180,
              endIndent: 180,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Engineering 1",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Engineering 2",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Engineering 3",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Engineering 4",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "Engineering 5",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 1,
              indent: 180,
              endIndent: 180,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: NetworkImage(
                        "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-back-to-24.png?raw=true")),
                FlipCard(
                    direction: FlipDirection.VERTICAL,
                    front: Container(
                      height: 300,
                      width: 250,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 10  horizontally
                              2.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Pathways.",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Text(
                            "1 of 3",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "view",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: 300,
                      width: 250,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 10  horizontally
                              2.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "B.COM",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          Text(
                            "M.COM",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          Text(
                            "PHD",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Continue",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )
                        ],
                      ),
                    )),
                FlipCard(
                    direction: FlipDirection.VERTICAL,
                    front: Container(
                      height: 300,
                      width: 250,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 10  horizontally
                              2.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Pathways.",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Text(
                            "2 of 3",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "view",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: 300,
                      width: 250,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 10  horizontally
                              2.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "B.COM",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          Text(
                            "M.COM",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          Text(
                            "PHD",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Continue",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )
                        ],
                      ),
                    )),
                FlipCard(
                    direction: FlipDirection.VERTICAL,
                    front: Container(
                      height: 300,
                      width: 250,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 10  horizontally
                              2.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Pathways.",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Text(
                            "3 of 3",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "view",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )
                        ],
                      ),
                    ),
                    back: Container(
                      height: 300,
                      width: 250,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          //background color of box
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              2.0, // Move to right 10  horizontally
                              2.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "B.COM",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          Text(
                            "M.COM",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          Text(
                            "PHD",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 20),
                          ),
                          Image(
                              image: NetworkImage(
                                  "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-expand-arrow-24.png?raw=true")),
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Continue",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          )
                        ],
                      ),
                    )),
                Image(
                    image: NetworkImage(
                        "https://github.com/manavdhir/covid19_tracker/blob/master/icons8-next-page-24.png?raw=trues")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
