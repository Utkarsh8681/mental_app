import 'package:flutter/material.dart';
import 'package:mental_app/components/excercises.dart';
import 'package:mental_app/components/feeling.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey[400],
              size: 40,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
              color: Colors.grey[400],
              size: 40,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.grey[400],
              size: 40,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2,
              color: Colors.grey[400],
              size: 40,
            ),
            label: ""),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi , Jared",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "23 jan 2021",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue[100]),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  // Searchbar
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.blue[300]),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              "Search ",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // how you feel
                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "How Do You Feel? ",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  // fellings
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FeelingsCard(
                            emoji: '😔',
                            emojiText: "Badly",
                          ),
                          FeelingsCard(
                            emoji: '😊',
                            emojiText: "fine",
                          ),
                          FeelingsCard(
                            emoji: '😆',
                            emojiText: "Well",
                          ),
                          FeelingsCard(
                            emoji: '😁',
                            emojiText: "Excelent",
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Excercise",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w900),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          )),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //     color: Colors.white,
                      //   ),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: ListTile(
                      //       leading: Container(
                      //           decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(12),
                      //               color: Colors.orange),
                      //           child: Padding(
                      //             padding: const EdgeInsets.all(8.0),
                      //             child: Icon(Icons.heart_broken),
                      //           )),
                      //       title: Text("Speaking Skills"),
                      //       subtitle: Text("16 excercises"),
                      //       trailing: Icon(Icons.more_horiz),
                      //     ),
                      //   ),
                      // )
                      // ListView.builder(
                      //   scrollDirection: Axis.vertical,
                      //   itemCount: 6,
                      //   itemBuilder: (context, index) {
                      //     return Excercises();
                      //   },
                      // )
                      Expanded(
                        child: ListView(
                          children: [
                            Excercises(),
                            Excercises(),
                            Excercises(),
                            Excercises(),
                            Excercises(),
                            Excercises(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
