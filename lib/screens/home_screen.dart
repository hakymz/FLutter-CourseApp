import 'package:course_app/models/course.dart';
import 'package:course_app/screens/course_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget _courseCard(course) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(course.image))),
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              course.name,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              course.totalCourse + "Courses",
              style: TextStyle(
                  color: Color(0xFF8F95B2), fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.sort),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10.0),
            child: Image(
              height: 40.0,
              width: 40.0,
              image: AssetImage("assets/person.png"),
            ),
          )
        ],
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              "Hey Alex,",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
            ),
            SizedBox(height: 15.0),
            Text(
              "Find a course you want to learn",
              style: TextStyle(fontSize: 22.0, color: Color(0xFF61688B)),
            ),
            Container(
              margin: EdgeInsets.only(top: 35.0),
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0),
              height: 60.0,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    width: MediaQuery.of(context).size.width - 110,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for anything",
                          hintStyle: TextStyle(fontSize: 18.0)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Categories",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text("See All",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6E8AFA)))
                ],
              ),
            ),
            SizedBox(height: 2),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                children: List.generate(courseList.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CourseScreen(courseList[index])));
                    },
                    child: _courseCard(courseList[index]),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
