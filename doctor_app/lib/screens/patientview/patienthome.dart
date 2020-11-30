import 'package:doctor_app/restapi/patientdetails.dart';
import 'package:doctor_app/screens/patientview/patientview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PatientHome extends StatefulWidget {
  @override
  _PatientHomeState createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  @override
  Widget build(BuildContext context) {
    TextStyle contentStyle = TextStyle(fontSize: 22, color: Colors.grey,fontWeight: FontWeight.w400);
    TextStyle subStyle = TextStyle(fontSize: 11, color: Colors.blueGrey,fontWeight: FontWeight.w700);
    final patientP = Provider.of<PatientProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245,245,245, 1),
      body: Stack(
              children: [
          ListView.builder(
            itemCount: patientP.patient.length,
            itemBuilder: (BuildContext context,int index){
              return Column(
                children: [
                     Padding(
             padding: const EdgeInsets.only(left: 20,top: 270),
             child: new Image.asset(
              'assets/images/doctor.png',
              width: 350,
              height: 400,
              fit: BoxFit.contain,
          ),
           ),
                  ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> patientView(patientDetails: patientP.patient[index],)));
                    },
                    title: Text(patientP.patient[index].name,style: contentStyle,),
                    subtitle: Text("view details",style: subStyle,),
                    trailing:  IconButton(
                         icon : Icon(Icons.delete_forever_sharp,),
                             color:const Color.fromRGBO(220, 60, 20, 1),
                                  iconSize: 25,
                            tooltip: "Delete Permanently",
                            onPressed: (){
                            patientP.deletePatient(patientP.patient[index]);
                         },
                        ),
                    ),
                  Divider(indent: 5,endIndent: 5,color: Colors.blueGrey,thickness: 1,)
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
