import 'employee.dart';

void main() {
  var Data1 = new Employee.id(88);
  var Data2 = new Employee.name('Jennie Kim');
  var Data3 = new Employee.department('Technology');

  print(Data1.id);
  print(Data2.name);
  print(Data3.department);
}