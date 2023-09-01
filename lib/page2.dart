import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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

  List<Map<String, dynamic>> list = [
    {'text': "Child"},
    {'text': "Humanities"},
    {'text': "Education"},
    {'text': "Science"},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 89,
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
                  "BOOK LENDING",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "PlusJakartaSans-ExtraBoldItalic"),
                )),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 20, bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          list[index]['text'],
                          style: TextStyle(
                              fontSize: selectedIndex == index ? 18 : 15,
                              fontWeight: selectedIndex == index
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          width: 20,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedIndex == index
                                ? Color(0xffFFCA27)
                                : Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 600,
            width: 365,
            //   color: Colors.black12,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 340,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            imagelist[index]["image"],
                          ),
                          SizedBox(width: 30),
                          Column(
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
                              Container(
                                width: 190,
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
                                        SizedBox(
                                          width: 3,
                                        ),
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
                                              bottomRight: Radius.circular(15)),
                                          color: Color(0xffFFCA27),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 10, color: Colors.black12)
                        ]),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
