import 'package:childrean/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> imagelist = [
    {
      'image': "assets/image/b1.jpeg",
      'name1': "The Gaint Kingdom",
      'name2': "Extracurricular reading / Growing\nmativational story book",
      'name3': "261",
      'name4': "remaining",
      'name5': "Borrow it"
    },
    {
      'image': "assets/image/b2.jpg",
      'name1': "Bear's wish",
      'name2': "Extracurricular reading / Child ed-\nucation story",
      'name3': "261",
      'name4': "remaining",
      'name5': "Borrow it"
    },
    {
      'image': "assets/image/b3.jpg",
      'name1': "Animal adventures",
      'name2': "Extracurricular reading / Growing\nmativational story book",
      'name3': "261",
      'name4': "remaining",
      'name5': "Borrow it"
    },
    {
      'image': "assets/image/b4.jpg",
      'name1': "Growing story",
      'name2': "Extracurricular reading / Child ed-\nucation story",
      'name3': "261",
      'name4': "remaining",
      'name5': "Borrow it"
    },
  ];

  List<Map<String, dynamic>> iconlist = [
    {'icon': "assets/image/book.png", 'name': "book list"},
    {
      'icon': "assets/image/reding.png",
      'name': " reading",
    },
    {
      'icon': "assets/image/space.png",
      'name': "space",
    },
    {
      'icon': "assets/image/more.png",
      'name': "more",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 90,
                  width: 365,
                ),
                Positioned(
                    left: -85,
                    //top: -50,
                    bottom: 5,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffFFECB2),
                      maxRadius: 100,
                    )),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Center(
                    child: Text(
                      "ENJOY READING",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          fontFamily: "PlusJakartaSans-ExtraBoldItalic"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 315,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search, color: Colors.grey),
                  // filled: false,
                  hintText: "Search for books",
                  hintStyle:
                      TextStyle(fontSize: 12, color: Colors.grey.shade500),

                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade100),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  height: 130,
                  width: 315,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Child Picture",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                    color: Color(0xff774A01))),
                            Text("Book",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                    color: Color(0xff774A01))),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 90,
                              height: 25,
                              child: Center(
                                  child: Text(
                                "click to enter",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                color: Color(0xffFC5D3D),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffFFCA27),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow.shade200,
                          // color: Colors.black12,
                          spreadRadius: 4,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    height: 130,
                    width: 150,
                    child: Image.asset(
                      "assets/image/dragon.png",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 0),
              child: Row(
                children: List.generate(
                    4,
                    (index) => Column(
                          children: [
                            Container(
                              height: 24,
                              width: 50,
                              margin: EdgeInsets.symmetric(horizontal: 17),
                              child: Image.asset(iconlist[index]["icon"]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(iconlist[index]["name"],
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54)),
                          ],
                        )),
              ),
            ),
            SizedBox(height: 18),
            Divider(color: Colors.grey.shade300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 19,
                        width: 4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffFFCA27),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "RECOMMEND",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "see all",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                      SizedBox(width: 3),
                      Icon(
                        Icons.arrow_circle_right,
                        size: 18,
                        color: Colors.grey.shade400,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 308,
              width: 365,
              //   color: Colors.black12,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 340,
                          height: 130,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 120, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(imagelist[index]["name1"],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(imagelist[index]["name2"],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade500)),
                                SizedBox(height: 15),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            imagelist[index]["name3"],
                                            style: TextStyle(
                                                color: Colors.redAccent,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            imagelist[index]["name4"],
                                            style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontSize: 11),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          width: 78,
                                          height: 28,
                                          child: Center(
                                            child: Text(
                                              imagelist[index]["name5"],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15)),
                                            color: Color(0xffFFCA27),
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 10, color: Colors.black12)
                              ]),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 25,
                        child: Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            imagelist[index]["image"],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
