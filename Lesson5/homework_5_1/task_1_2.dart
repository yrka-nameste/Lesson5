import 'student.dart';

void main() {
  List<Student> students = [
    Student('John', 18, 3.5),
    Student("Petr", 20, 3.0),
    Student("Alice", 19, 3.2),];

  sortStudentsByGPA(students);
  
}
void sortStudentsByGPA(List<Student> students) {
  students.sort((a, b) => b.gpa.compareTo(a.gpa));
  print(students);
}