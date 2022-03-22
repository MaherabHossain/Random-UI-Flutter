import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget MyCard() {
    return (Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      height: 150,
      child: Card(
        shadowColor: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // container for image
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(50)),
                ),

                // for name and description
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maherab Hossain',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Description',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                      Text(
                        'Another Description',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                // available date
                Container(
                  // margin: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(
                        'available date',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      // date
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.pink,
                            ),
                            Text(
                              '18/08/2022',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('This is button one')),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('This is button one')),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random Design'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [MyCard(), MyCard(), MyCard(), MyCard(), MyCard()],
          ),
        ),
      ),
    );
  }
}
