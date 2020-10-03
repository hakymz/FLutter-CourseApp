import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  final data;
  CourseScreen(this.data);

  Widget _courseContentList(index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "0" + (1 + index).toString(),
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE4E7F4)),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.courseContent[index].time,
                    style: TextStyle(
                        color: Color(0xFFA0A5BD),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    data.courseContent[index].title,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
                color: Color(0xFF49CC96),
                borderRadius: BorderRadius.circular(20.0)),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Course App",
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          height: 80.0,
          child: Row(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 70.0,
                decoration: BoxDecoration(
                    color: Color(0xFFFFEDEE),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Icon(
                  Icons.local_mall,
                  color: Color(0xFFFF6670),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Color(0xFF6E8AFA),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 400.0,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    top: -56.0,
                    child: Image(
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 400.0,
                      image: AssetImage(data.image),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image(
                            width: 100.0,
                            image: AssetImage("assets/bestseller.png"),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Design Thinking",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.people,
                                    color: Color(0xFF61688B),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    data.students + "k",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF61688B)),
                                  )
                                ],
                              ),
                              SizedBox(width: 10.0),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Color(0xFF61688B),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    data.star + "k",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF61688B)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "\$" + data.price,
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    top: -95,
                    child: Container(
                      height: MediaQuery.of(context).size.height - 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 40.0,
                                right: 20.0,
                                bottom: 20.0,
                                left: 20.0),
                            child: Text(
                              "Course Content",
                              style: TextStyle(
                                  fontSize: 21.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 100.0),
                              child: ListView.builder(
                                  itemCount: data.courseContent.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return _courseContentList(index);
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
