import 'package:doctor_app/models/patientdetailsmodel.dart';
import 'package:doctor_app/restapi/patientdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class patientView extends StatelessWidget {
  final PatientDetails patientDetails;
  patientView({Key key, @required this.patientDetails}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final patientP = Provider.of<PatientProvider>(context);
    TextStyle defaultStyle = TextStyle(fontSize: 20, color:Colors.deepPurple,fontWeight: FontWeight.bold);
    TextStyle regularStyle = TextStyle(fontSize: 18, color:Colors.deepPurple,fontWeight: FontWeight.w400);
    TextStyle contentStyle = TextStyle(fontSize: 17, color: Colors.grey,fontWeight: FontWeight.w400);
    return new Scaffold(
      appBar: AppBar(
        title: Text('${patientDetails.name}'.toUpperCase()),
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 5),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Divider(indent: 0,endIndent:0,thickness: 3,color:const Color.fromRGBO(246, 189, 255, 1)),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 27),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text( "Patient Name : ",style: defaultStyle),
                                  Text(' ${patientDetails.name}',style: regularStyle)
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7,),
                    Padding(
                        padding: EdgeInsets.only(right: 94),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text( "Age :",style: defaultStyle),
                            Text('   ${patientDetails.age}',style: regularStyle)
                          ],
                        ),
                    ),
                    SizedBox(height: 7,),
                    Padding(
                        padding: EdgeInsets.only(right: 70,left: 20),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text( "Patient ID :",style: defaultStyle),
                            Text('   ${patientDetails.id}',style: regularStyle)
                          ],
                        )
                    ),
                    SizedBox(height: 7,),
                    Padding(
                        padding: EdgeInsets.only(left: 17),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text( "Doctor name : ",style: defaultStyle),
                            Text('${patientDetails.doctor}',style: regularStyle)
                          ],
                        ),
                    ),
                    ],),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Divider(indent: 10,endIndent:10,thickness: 3,color:Colors.deepPurple),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Medications",style: defaultStyle,),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text('${patientDetails.medication}',style: contentStyle,)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Divider(indent: 10,endIndent:10,thickness: 3,color: Colors.deepPurple),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Records",style: defaultStyle,),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text('${patientDetails.problem}',style: contentStyle,)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}