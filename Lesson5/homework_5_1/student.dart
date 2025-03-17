class Student {
  String _name;
  int _age;
  double _gpa;
   Student(this._name, this._age, this._gpa);
String get name => _name;
int get age => _age;  
double get gpa => _gpa;
   @override
  String toString() {
    return 'Student{name: $_name, age: $_age, gpa: $_gpa}'; 
}
}