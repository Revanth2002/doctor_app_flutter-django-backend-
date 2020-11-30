import 'package:doctor_app/models/patientdetailsmodel.dart';
import 'package:doctor_app/restapi/patientdetails.dart';
import 'package:doctor_app/screens/homescreen/homescreen.dart';
import 'package:doctor_app/screens/patientview/patienthome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class addRecordView extends StatefulWidget {
  @override
  _addRecordViewState createState() => _addRecordViewState();
}

class _addRecordViewState extends State<addRecordView> {
  final name = TextEditingController();
  final age = TextEditingController();
  final doctorname = TextEditingController();
  final mediation = TextEditingController();
  final records = TextEditingController();

  void onAdd(){
    final String textvalue = name.text;
    final String descvalue = age.text;
    if(textvalue.isNotEmpty && descvalue.isNotEmpty){
      final PatientDetails patient = PatientDetails(
          name: textvalue,
          age: descvalue
      );
      Provider.of<PatientProvider>(context,listen: false).addPatient(patient);
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 240, 1),
      body: Stack(
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 20,top: 270),
             child: new Image.asset(
              'assets/images/doctor1.png',
              width: 350,
              height: 400,
              fit: BoxFit.contain,
          ),
           ),
          ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          hintText: "Name ",
                          hintStyle: TextStyle(color: Colors.black),
                          focusColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: TextFormField(
                        controller: age,
                        decoration: InputDecoration(
                          hintText: "Age ",
                          hintStyle: TextStyle(color: Colors.black),
                          focusColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: TextFormField(
                        controller: doctorname,
                        decoration: InputDecoration(
                          hintText: "Doctor Name  ",
                          hintStyle: TextStyle(color: Colors.black),
                          focusColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: TextFormField(
                        controller: mediation,
                        decoration: InputDecoration(
                          hintText: "Medications ",
                          hintStyle: TextStyle(color: Colors.black),
                          focusColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: TextFormField(
                        controller: records,
                        decoration: InputDecoration(
                          hintText: "Records ",
                          hintStyle: TextStyle(color: Colors.black),
                          focusColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: RaisedButton(onPressed: (){
                        onAdd();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
                        },
                        elevation: 10,
                        color: Colors.deepPurple,
                        splashColor: Colors.black,
                        child: Text("Add ",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}