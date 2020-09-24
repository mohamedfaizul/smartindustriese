import 'package:flutter/material.dart';

import 'NewProperty.dart';


class GroupDetails extends StatefulWidget {
  @override
  _GroupDetailsState createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {





  List<ListItem> _ServiceType = [
    ListItem(1, "Residential"),
    ListItem(4, "Commercial")
  ];



  List<DropdownMenuItem<ListItem>> _dropdownMenuItems_service_type;
  ListItem _selectedItemone__service_type;







  void initState() {
    super.initState();


    _dropdownMenuItems_service_type=buildDropDownMenuItems((_ServiceType));
    _selectedItemone__service_type = _dropdownMenuItems_service_type[0].value;



  }




  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }



  String searchAddr;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.redAccent[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: new ListView(
          padding: EdgeInsets.all(2.0),
          addRepaintBoundaries: true,
          shrinkWrap: true,
          children: <Widget>[
            new Card(
              elevation: 1.0,
              color: Colors.black38,
              margin: EdgeInsets.all(3.0),
              child: InkWell(
//                onTap: () {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => TodayDETAILS()));
//                },
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Group ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildTextFieldSignup("Name"),
            SizedBox(height: 10),
            buildTextFieldNumbers("Address"),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20.0),
              child: DropdownButton<ListItem>(
                  value: _selectedItemone__service_type,
                  items: _dropdownMenuItems_service_type,
                  onChanged: (value) {
                    setState(() {
                      _selectedItemone__service_type = value;
                    });
                  }),
            ),
            SizedBox(height: 10),
            buildTextFieldSignup("Map Location"),
            SizedBox(height: 10),
            new Card(
              elevation: 1.0,
              color: Colors.black38,
              margin: EdgeInsets.all(3.0),
              child: InkWell(
//                onTap: () {
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => TodayDETAILS()));
//                },
                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(15),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Property List",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            new Card(
              elevation: 4.0,
              margin: EdgeInsets.all(5.0),
              child: InkWell(

                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Type ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Tank", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Name  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Gandhipuram", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Plan  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Tank-1000L", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Total  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("4", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Action  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Action", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            new Card(
              elevation: 4.0,
              margin: EdgeInsets.all(5.0),
              child: InkWell(

                splashColor: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Type ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Tank", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Name  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Gandhipuram", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Plan  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Tank-1000L", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Total  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("4", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Row(
                              children: <Widget>[
                                new Text(
                                  "Action  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Action", textAlign: TextAlign.left)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      child: Text('Edit'),
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                              builder: (BuildContext context) => GroupList(),
//                            ));
                      },
                    ),
                    SizedBox(width: 20),
                    new RaisedButton(
                      child: Text('Add Property'),
                      color: Colors.green,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewProperty(),
                            ));
                      },
                    ),
                    SizedBox(width: 20),
                    new RaisedButton(
                      child: Text('Delete'),
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                              builder: (BuildContext context) =>
//                                  DashBoardHome(),
//                            ));
                      },
                    ),




                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Group Details'),
      ),
    );
  }




  buildTextFieldSignup(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      //obscureText: hintText == "Password" ? isHidden : false,
    );
  }

  buildTextFieldNumbers(String hintText) {
    return TextField(
      maxLines: 5,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      //obscureText: hintText == "Password" ? isHidden : false,
    );
  }



}
class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

