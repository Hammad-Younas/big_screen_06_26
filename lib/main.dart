import 'dart:io';

import 'package:big_screen_06_26/Firm.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Firm.dart';
import 'demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Big Screen',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: VideoPlayerApp(),
    );
  }
}

class BigScreen extends StatefulWidget {
  BigScreen({Key? key}) : super(key: key);

  @override
  State<BigScreen> createState() => _BigScreenState();
}

class _BigScreenState extends State<BigScreen> {
  var check = false;
  var check2 = false;
  var val;
  String? newval = "";

  File? image;
  Future getImage() async {
    final _image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
    );
    setState(() {
      if (_image != null) {
        final imageTemporary = File(_image.path);
        this.image = imageTemporary;
      } else {
        return null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text("This is just demo"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 10,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: GestureDetector(
                            onTap: () => getImage(),
                            child: image != null
                                ? const CircleAvatar(
                                    radius: 10,
                                    child: Icon(Icons.add),
                                  )
                                : const CircleAvatar(
                                    radius: 10,
                                  ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: const Text(
                        "Upload your photo",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2F80ED),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 27, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Full Name"),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(106, 197, 215, 238),
                              offset: Offset(2, 2.5),
                              blurRadius: 10,
                              spreadRadius: 3,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 10,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffd6e3f3),
                              Color.fromARGB(255, 247, 245, 245),
                              Colors.white,
                            ],
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Shabby",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mobile Number"),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(106, 197, 215, 238),
                              offset: Offset(2, 2.5),
                              blurRadius: 10,
                              spreadRadius: 3,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 10,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffd6e3f3),
                              Color.fromARGB(255, 247, 245, 245),
                              Colors.white,
                            ],
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Mobile Number",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alternative Mobile Number"),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(106, 197, 215, 238),
                              offset: Offset(2, 2.5),
                              blurRadius: 10,
                              spreadRadius: 3,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 10,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffd6e3f3),
                              Color.fromARGB(255, 247, 245, 245),
                              Colors.white,
                            ],
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Alternative Mobile Number",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email"),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(106, 197, 215, 238),
                              offset: Offset(2, 2.5),
                              blurRadius: 10,
                              spreadRadius: 3,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 10,
                            ),
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffd6e3f3),
                              Color.fromARGB(255, 247, 245, 245),
                              Colors.white,
                            ],
                          ),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text("Gender")),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("Male"),
                        leading: Radio(
                            activeColor: Color(0xffFD6B09),
                            value: 1,
                            groupValue: val,
                            onChanged: (newval) {
                              setState(() {
                                val = newval;
                              });
                            }),
                      ),
                      ListTile(
                        title: Text("Female"),
                        leading: Radio(
                            activeColor: Color(0xffFD6B09),
                            value: 2,
                            groupValue: val,
                            onChanged: (newval) {
                              setState(() {
                                val = newval;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print(check);
                    setState(() {
                      check = !check;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text("Document Details"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: check
                            ? Icon(Icons.keyboard_arrow_down_rounded)
                            : Icon(Icons.keyboard_arrow_up),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: check ? Detail() : null,
                ),
                GestureDetector(
                  onTap: () {
                    print(check2);
                    setState(() {
                      check2 = !check2;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10),
                        child: Text("Firm Information"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10),
                        child: check2
                            ? Icon(Icons.keyboard_arrow_down_rounded)
                            : Icon(Icons.keyboard_arrow_up),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: check2 ? Firms() : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("DOB"),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(106, 197, 215, 238),
                            offset: Offset(2, 2.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                          ),
                        ],
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffd6e3f3),
                            Color.fromARGB(255, 247, 245, 245),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "12 March 2020",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Aadhaar Number"),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(106, 197, 215, 238),
                            offset: Offset(2, 2.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffd6e3f3),
                            Color.fromARGB(255, 247, 245, 245),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "789455555555",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PAN Number"),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(106, 197, 215, 238),
                            offset: Offset(2, 2.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffd6e3f3),
                            Color.fromARGB(255, 247, 245, 245),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "ABIO1444555Z",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address"),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(106, 197, 215, 238),
                            offset: Offset(2, 2.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffd6e3f3),
                            Color.fromARGB(255, 247, 245, 245),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City"),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(106, 197, 215, 238),
                            offset: Offset(2, 2.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffd6e3f3),
                            Color.fromARGB(255, 247, 245, 245),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "City",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("State"),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(106, 197, 215, 238),
                            offset: Offset(2, 2.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffd6e3f3),
                            Color.fromARGB(255, 247, 245, 245),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "State",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PIN Code"),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(106, 197, 215, 238),
                            offset: Offset(2, 2.5),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 10,
                          ),
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xffd6e3f3),
                            Color.fromARGB(255, 247, 245, 245),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Pin Code",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
