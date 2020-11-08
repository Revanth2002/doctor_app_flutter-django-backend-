import 'package:doctor_app/models/patientdetailsmodel.dart';
import 'package:doctor_app/restapi/patientdetails.dart';
import 'package:doctor_app/screens/homescreen/homescreen.dart';
import 'package:doctor_app/screens/loginscreen/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PatientProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Credentials(),
        ),
      ),
    );
  }
}


//TODO ADD Credintials for full app



