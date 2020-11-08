class PatientDetails{
  int id;
  final String age;
  final String problem;
  final String medication;
  final String name;
  final String doctor;

  PatientDetails({this.id,this.age,this.problem, this.medication, this.name, this.doctor});

  factory PatientDetails.fromJson(Map<String,dynamic>json){
    return PatientDetails(
    id: json['id'],
    age: json['age'],
    doctor: json['doctor'],
    medication: json['medication'],
    name: json['name'],
    problem: json['problem']
    );
  }

  dynamic toJson() => {
    'id': id,
    'age':age,
    'doctor':doctor,
    'medication':medication,
    'name': name,
    'problem':problem
  };
}