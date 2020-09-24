import 'package:flutter/material.dart';

class DashBoardHome extends StatefulWidget {
  @override
  _DashBoardHomeState createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  int _selectedTab = 0;
  final _pageOptions = [
    DashBoard_TODAY(),
    DashBoard_MENU(),
    DashBoard_PROFILE(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
        ],
      ),

    );
  }

}

class DashBoard_MENU extends StatefulWidget {
  @override
  _DashBoard_MENUState createState() => _DashBoard_MENUState();
}

class _DashBoard_MENUState extends State<DashBoard_MENU> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Categories'),
        backgroundColor: Colors.redAccent,
      ),
      //backgroundColor: Colors.redAccent[100],
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: Container(
        padding: new EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              elevation: 5.0,
              // color: Colors.redAccent[100],
              child: InkWell(
                onTap: () {
                  print('tapped');
                },
                splashColor: Colors.redAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.border_color,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Services",
                        style: new TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
//                onTap: () {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => ServicePAGE()));
//                },
                //  splashColor: Colors.redAccent[100],
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.build,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Property",
                        style: new TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
                onTap: () {},
                //  splashColor: Colors.redAccent[100],
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.assignment,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Plan",
                        style: new TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Damages",
                        style: new TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.settings_input_composite,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Cpmplaints",
                        style: new TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.nature_people,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Referrel",
                        style: new TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.feedback,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Invoice",
                        style: new TextStyle(fontSize: 11.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
                onTap: () {},
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.mode_comment,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Profile",
                        style: new TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5.0,
              child: InkWell(
//                onTap: () {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => TeamList()));
//                },
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.insert_emoticon,
                        size: 25.0,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Team",
                        style: new TextStyle(fontSize: 12.0),
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

class DashBoard_PROFILE extends StatefulWidget {
  @override
  _DashBoard_PROFILEState createState() => _DashBoard_PROFILEState();
}

class _DashBoard_PROFILEState extends State<DashBoard_PROFILE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.border_color,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      // backgroundColor: Colors.redAccent[100],
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding:
        EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/profile_images.png'),
            ),

            SizedBox(
              height: 20.0,
            ),

            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => ForgetPassword()));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Mohamed Faizul',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),

            // buildButtonContainer(),

            SizedBox(
              height: 10.0,
            ),

            Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          // SizedBox(width: 150.0,),
                          Text(
                            'Mohamed Faizul',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            new Divider(
              color: Colors.blue,
              indent: 2.0,
            ),
            Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Designation',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Mobile Developer',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            new Divider(color: Colors.blue, indent: 2.0),
            Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'faiz.faiz.fz@gmail.com',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Divider(color: Colors.blue, indent: 2.0),
            Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Phone No',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '9787870533',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Divider(color: Colors.blue, indent: 2.0),
            Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Year of experience',
//                              textDirection: TextDirection.ltr,
//                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '2.5',
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),

            Divider(color: Colors.blue, indent: 2.0),
          ],
        ),
      ),
    );
  }
}

class DashBoard_TODAY extends StatefulWidget {
  @override
  _DashBoard_TODAYState createState() => _DashBoard_TODAYState();
}

class _DashBoard_TODAYState extends State<DashBoard_TODAY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[],
        ),
      ),
      appBar: AppBar(
        title: Text('Today Plan'),
      ),
      // backgroundColor: Colors.redAccent[100],
    );
  }
}
