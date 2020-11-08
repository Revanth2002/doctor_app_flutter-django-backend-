
import 'package:doctor_app/screens/addRecord/addrecord.dart';
import 'package:doctor_app/screens/patientview/patienthome.dart';
import 'package:doctor_app/screens/patientview/patientview.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        //Color.fromRGBO(224,255,255,0.1),
        appBar: AppBar(
          elevation: 20,
          shadowColor: Colors.deepPurpleAccent,
          backgroundColor: Colors.white,
          //backgroundColorEnd: const Color(0xff008efa),
         //backgroundColorStart: const Color(0x5c42c6ee),
          title: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.medical_services,color: Colors.red,),
                SizedBox(width: 5,),
                Text(
                  "Doctor's Hub",
                  style: TextStyle(
                    fontFamily: 'Candara',
                    fontSize: 20,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          bottom: TabBar(
              unselectedLabelColor: Colors.deepPurple,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepPurple),
              tabs: <Widget>[
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.deepPurple, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Patient",style: TextStyle(fontFamily: 'Microsoft PhagsPa',letterSpacing:0.3,fontSize: 18,fontWeight:FontWeight.w500),),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.deepPurple, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Add Patient",style: TextStyle(fontFamily: 'Microsoft PhagsPa',letterSpacing:0.1,fontSize: 18,fontWeight:FontWeight.w500)),
                    ),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            new PatientHome(),
            new addRecordView()
          ],
        ),
      ),
    );
  }
}
