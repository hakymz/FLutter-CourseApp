import 'package:flutter/cupertino.dart';

class Course {
  final name;
  final totalCourse;
  final image;
  final price;
  final star;
  final students;
  final List courseContent;

  Course(this.name, this.totalCourse, this.image, this.price, this.star,
      this.students, this.courseContent);
}

class CourseContent {
  final time;
  final title;

  CourseContent(this.time, this.title);
}

final List _courseContents = [
  CourseContent("5:35 mins", "Welcome to the Course"),
  CourseContent("7:35 mins", "Design Thinking - Intro"),
  CourseContent("10:35 mins", "Design Thinking Process"),
  CourseContent("5:35 mins", "Customer Perspective"),
];

List courseList = [
  Course("UX Design", "25", "assets/image1.png", "50", "4.3", "10",
      _courseContents),
  Course("Marketing", "20", "assets/image2.png", "50", "4.1", "55",
      _courseContents),
  Course("Photography", "10", "assets/image3.png", "50", "4.3", "10",
      _courseContents),
  Course("Business Photography", "7", "assets/image4.png", "50", "4.2", "35",
      _courseContents),
];
