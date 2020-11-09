import 'package:doctor_app/models/patientdetailsmodel.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PatientProvider with ChangeNotifier{
  PatientProvider(){
    this.fetchTask();
  }
  List<PatientDetails> _patient = [];
  List<PatientDetails> get patient{
    return [..._patient];
  }

  void addPatient(PatientDetails patientRead) async{
    final response = await http.post("http://10.0.2.2:8000/list/",
      headers: {"Content-Type" : "application/json"},
      body: json.encode(patientRead),
    );
    if(response.statusCode == 201){
      patientRead.id = json.decode(response.body)['id'];
      _patient.add(patientRead);
      notifyListeners();
    }
  }

  void deletePatient(PatientDetails patientDelete) async{
    final response = await http.delete("http://10.0.2.2:8000/list/${patientDelete.id}",
    );
    if(response.statusCode == 204){
      _patient.remove(patientDelete);
      notifyListeners();
    }
  }


  fetchTask() async{
    final url = "http://10.0.2.2:8000/list/?format=json";
    final response = await http.get(url);
    if(response.statusCode == 200){
      var data = json.decode(response.body) as List;
      _patient = data.map<PatientDetails>((json) => PatientDetails.fromJson(json)).toList();
      //notifyListeners();
    }
  }
}
