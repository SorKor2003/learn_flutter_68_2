import 'package:flutter/material.dart';

enum Job {
  developer(
    title: "นักพัฒนา",
    description: "ทำงานเกี่ยวกับการพัฒนาแอปพลิเคชันและซอฟต์แวร์ต่าง ๆ",
    image: "assets/images/developer.png",
    color: Colors.blueAccent,
  ),

  designer(
    title: "นักออกแบบ",
    description: "ทำงานเกี่ยวกับการออกแบบกราฟิกและประสบการณ์ผู้ใช้",
    image: "assets/images/designer.png",
    color: Colors.greenAccent,
  ),

  manager(
    title: "ผู้จัดการ",
    description: "ทำงานเกี่ยวกับการบริหารจัดการทีมและโครงการ",
    image: "assets/images/manager.png",
    color: Colors.orangeAccent,
  ),

  businessman(
    title: "นักธุรกิจ",
    description: "ทำงานเกี่ยวกับการวางแผนและดำเนินธุรกิจต่าง ๆ",
    image: "assets/images/businessman.png",
    color: Colors.redAccent,
  ),

  student(
    title: "นักศึกษา",
    description: "ทำงานเกี่ยวกับการเรียนรู้และพัฒนาทักษะต่าง ๆ",
    image: "assets/images/student.png",
    color: Colors.purpleAccent,
  );

  final String title;
  final String description;
  final String image;
  final Color color;

  const Job({
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

}

class Person {
  String name;
  int age;
  Job job;


  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: Job.developer),
  Person(name: "สมหญิง", age: 25, job: Job.designer),
  Person(name: "สมปอง", age: 40, job: Job.manager),
  Person(name: "สมศรี", age: 35, job: Job.businessman),
  Person(name: "สมจิตร", age: 20, job: Job.student),
];