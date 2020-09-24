import 'package:flutter/material.dart';

import 'NewComplaint.dart';

class NewClaim extends StatefulWidget {
  @override
  _NewClaimState createState() => _NewClaimState();
}

class _NewClaimState extends State<NewClaim> {
  List<ListItem> _PropertyType = [ListItem(1, "Property Name")];
  List<ListItem> _TankType = [
    ListItem(1, "Rectangle"),
    ListItem(4, "Cylinder")
  ];

  List<ListItem> _ServiceType = [ListItem(1, "Service Type")];
  List<ListItem> _damage = [ListItem(1, "Damage")];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;
  List<DropdownMenuItem<ListItem>> _dropdownMenuItemsStatus;
  ListItem _selectedItemStatus;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems_service_type;
  ListItem _selectedItemone__service_type;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems__TankType;
  ListItem _selectedItemone__TankType;

  List<DropdownMenuItem<ListItem>> _dropdownMenuItemsDamage;
  ListItem _selectedItemDamage;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_PropertyType);
    _selectedItem = _dropdownMenuItems[0].value;

    _dropdownMenuItemsDamage = buildDropDownMenuItems(_damage);
    _selectedItemDamage = _dropdownMenuItemsDamage[0].value;

    _dropdownMenuItems_service_type = buildDropDownMenuItems((_ServiceType));
    _selectedItemone__service_type = _dropdownMenuItems_service_type[0].value;

    _dropdownMenuItems__TankType = buildDropDownMenuItems((_TankType));
    _selectedItemone__TankType = _dropdownMenuItems__TankType[0].value;
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

  DateTime _dateTime;

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
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new DropdownButton<ListItem>(
                        value: _selectedItem,
                        items: _dropdownMenuItems,
                        onChanged: (value) {
                          setState(() {
                            _selectedItem = value;
                          });
                        }),
                  ),
                ),
                new Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new DropdownButton<ListItem>(
                        value: _selectedItemDamage,
                        items: _dropdownMenuItemsDamage,
                        onChanged: (value) {
                          setState(() {
                            _selectedItemDamage = value;
                          });
                        }),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new DropdownButton<ListItem>(
                        value: _selectedItemone__TankType,
                        items: _dropdownMenuItems__TankType,
                        onChanged: (value) {
                          setState(() {
                            _selectedItemone__TankType = value;
                          });
                        }),
                  ),
                ),
                new Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new DropdownButton<ListItem>(
                        value: _selectedItemone__service_type,
                        items: _dropdownMenuItems_service_type,
                        onChanged: (value) {
                          setState(() {
                            _selectedItemone__service_type = value;
                          });
                        }),
                  ),
                ),
              ],
            ),
            new Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextField(
                  decoration: InputDecoration(
                    hintText: 'Commercial',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            new Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextField(
                  decoration: InputDecoration(
                    hintText: 'Capacity',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            new Card(
              elevation: 1.0,
              color: Colors.redAccent[100],
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
                                  "Service ",
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
                                  "Code ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("12345", textAlign: TextAlign.left)
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
                                  "Date  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("20-jan-20",
                                      textAlign: TextAlign.left)
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
                                  "Type",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Dealer", textAlign: TextAlign.left)
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
                                  new Text("name", textAlign: TextAlign.left)
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
                                  "Count  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("3", textAlign: TextAlign.left)
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
              elevation: 1.0,
              color: Colors.redAccent[100],
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
                                  "Damage ",
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
            buildTextFieldNumbers('Damage Summary'),
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
                                  "Damage Code ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("12345", textAlign: TextAlign.left)
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
                                  "Date  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("20-jan-20",
                                      textAlign: TextAlign.left)
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
                                  "Amount",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("7000", textAlign: TextAlign.left)
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
              elevation: 1.0,
              color: Colors.redAccent[100],
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
                                  "Claim  ",
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
            new Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextField(
                  decoration: InputDecoration(
                    hintText: 'Claim Amount : 7000',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
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
                                  "No ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("1", textAlign: TextAlign.left)
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
                                  "Discription  ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("Wall", textAlign: TextAlign.left)
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
                                  "Cost",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: new Row(
                                children: <Widget>[
                                  new Text("5000", textAlign: TextAlign.left)
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
            buildTextFieldNumbers('Claim Summary'),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      child: Text('Cancel'),
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => NewComplaint(),
                            ));
                      },
                    ),
                    SizedBox(width: 20),
                    new RaisedButton(
                      child: Text('Save'),
                      color: Colors.green,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => NewComplaint(),
                            ));
                      },
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text('New Claim'),
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

  Widget buildTextField(String hintText) {
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
        prefixIcon:
            hintText == "Email" ? Icon(Icons.email) : Icon(Icons.search),
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
