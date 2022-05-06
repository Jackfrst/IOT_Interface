import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  var on_off_page1 = ["◾ OFF", "◾ OFF", "◾ OFF", "◾ OFF", "◾ OFF", "◾ OFF"];
  var color_Icon_page1 = [
    Colors.grey[300],
    Colors.grey[300],
    Colors.grey[300],
    Colors.grey[300],
    Colors.grey[300],
    Colors.grey[300]
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Home >",
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(
              "Home",
              style: TextStyle(color: Colors.blue[200]),
            ),
            icon: Icon(
              Icons.home,
              color: Colors.blue[200],
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search, color: Colors.blue[200]),
          ),
          BottomNavigationBarItem(
              title: Text("Add"),
              backgroundColor: Colors.blue[200],
              icon: Container(
                color: Colors.blue[200],
                child: Icon(
                  Icons.add_box_rounded,
                  color: Colors.white,
                ),
              )),
          BottomNavigationBarItem(
            title: Text("Message"),
            icon: Icon(Icons.message, color: Colors.blue[200]),
          ),
          BottomNavigationBarItem(
            title: Text("Outline"),
            icon: Icon(Icons.person_outline, color: Colors.blue[200]),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .015,
                bottom: MediaQuery.of(context).size.height * .015),
            color: Colors.white,
            child: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Living",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Bed Room",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: TabBarView(
              children: [
                all(context),
                living(context),
                bedroom(context),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget all(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .015,
                  bottom: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015,
                  left: MediaQuery.of(context).size.width * .03,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.powerPlugOffOutline,
                            size: 50,
                            color: color_Icon_page1[1],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue.shade800),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                          ),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[1] == "◾ OFF") {
                                  on_off_page1[1] = "◾ ON";
                                  color_Icon_page1[1] = Colors.blue[200];
                                } else if (on_off_page1[1] == "◾ ON") {
                                  on_off_page1[1] = "◾ OFF";
                                  color_Icon_page1[1] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[1],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Plug Ammar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[1],
                        style: TextStyle(
                          color: color_Icon_page1[1],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.all(
                  MediaQuery.of(context).size.width * .015,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.lightSwitch,
                            size: 50,
                            color: color_Icon_page1[2],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[2] == "◾ OFF") {
                                  on_off_page1[2] = "◾ ON";
                                  color_Icon_page1[2] = Colors.blue[200];
                                } else if (on_off_page1[2] == "◾ ON") {
                                  on_off_page1[2] = "◾ OFF";
                                  color_Icon_page1[2] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[2],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Bilik Hana",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[2],
                        style: TextStyle(
                          color: color_Icon_page1[2],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .015,
                  bottom: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015,
                  left: MediaQuery.of(context).size.width * .03,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.lightbulb,
                            size: 50,
                            color: color_Icon_page1[3],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[3] == "◾ OFF") {
                                  on_off_page1[3] = "◾ ON";
                                  color_Icon_page1[3] = Colors.blue[200];
                                } else if (on_off_page1[3] == "◾ ON") {
                                  on_off_page1[3] = "◾ OFF";
                                  color_Icon_page1[3] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[3],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .13),
                      child: Text(
                        "Gate Light Switch",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[3],
                        style: TextStyle(
                          color: color_Icon_page1[3],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.all(
                  MediaQuery.of(context).size.width * .015,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.powerPlugOutline,
                            size: 50,
                            color: color_Icon_page1[4],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[4] == "◾ OFF") {
                                  on_off_page1[4] = "◾ ON";
                                  color_Icon_page1[4] = Colors.blue[200];
                                } else if (on_off_page1[4] == "◾ ON") {
                                  on_off_page1[4] = "◾ OFF";
                                  color_Icon_page1[4] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[4],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Plug 3 patio",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[4],
                        style: TextStyle(
                          color: color_Icon_page1[4],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .015,
                  bottom: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015,
                  left: MediaQuery.of(context).size.width * .03,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.carParkingLights,
                            size: 50,
                            color: color_Icon_page1[5],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[5] == "◾ OFF") {
                                  on_off_page1[5] = "◾ ON";
                                  color_Icon_page1[5] = Colors.blue[200];
                                } else if (on_off_page1[5] == "◾ ON") {
                                  on_off_page1[5] = "◾ OFF";
                                  color_Icon_page1[5] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[5],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Parking Light",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[5],
                        style: TextStyle(
                          color: color_Icon_page1[5],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.all(
                  MediaQuery.of(context).size.width * .015,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.bridge,
                            size: 50,
                            color: color_Icon_page1[0],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[0] == "◾ OFF") {
                                  on_off_page1[0] = "◾ ON";
                                  color_Icon_page1[0] = Colors.blue[200];
                                } else if (on_off_page1[0] == "◾ ON") {
                                  on_off_page1[0] = "◾ OFF";
                                  color_Icon_page1[0] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[0],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .27,
                      ),
                      child: Text(
                        "Bridge",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[0],
                        style: TextStyle(
                          color: color_Icon_page1[0],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget living(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .015,
                  bottom: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015,
                  left: MediaQuery.of(context).size.width * .03,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.lightbulb,
                            size: 50,
                            color: color_Icon_page1[3],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[3] == "◾ OFF") {
                                  on_off_page1[3] = "◾ ON";
                                  color_Icon_page1[3] = Colors.blue[200];
                                } else if (on_off_page1[3] == "◾ ON") {
                                  on_off_page1[3] = "◾ OFF";
                                  color_Icon_page1[3] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[3],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * .13),
                      child: Text(
                        "Gate Light Switch",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[3],
                        style: TextStyle(
                          color: color_Icon_page1[3],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.all(
                  MediaQuery.of(context).size.width * .015,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.powerPlugOutline,
                            size: 50,
                            color: color_Icon_page1[4],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[4] == "◾ OFF") {
                                  on_off_page1[4] = "◾ ON";
                                  color_Icon_page1[4] = Colors.blue[200];
                                } else if (on_off_page1[4] == "◾ ON") {
                                  on_off_page1[4] = "◾ OFF";
                                  color_Icon_page1[4] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[4],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Plug 3 patio",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[4],
                        style: TextStyle(
                          color: color_Icon_page1[4],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .015,
                  bottom: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015,
                  left: MediaQuery.of(context).size.width * .03,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.carParkingLights,
                            size: 50,
                            color: color_Icon_page1[5],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[5] == "◾ OFF") {
                                  on_off_page1[5] = "◾ ON";
                                  color_Icon_page1[5] = Colors.blue[200];
                                } else if (on_off_page1[5] == "◾ ON") {
                                  on_off_page1[5] = "◾ OFF";
                                  color_Icon_page1[5] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[5],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Parking Light",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[5],
                        style: TextStyle(
                          color: color_Icon_page1[5],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.all(
                  MediaQuery.of(context).size.width * .015,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.bridge,
                            size: 50,
                            color: color_Icon_page1[0],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[0] == "◾ OFF") {
                                  on_off_page1[0] = "◾ ON";
                                  color_Icon_page1[0] = Colors.blue[200];
                                } else if (on_off_page1[0] == "◾ ON") {
                                  on_off_page1[0] = "◾ OFF";
                                  color_Icon_page1[0] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[0],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .27,
                      ),
                      child: Text(
                        "Bridge",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[0],
                        style: TextStyle(
                          color: color_Icon_page1[0],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bedroom(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * .015,
                  bottom: MediaQuery.of(context).size.width * .015,
                  right: MediaQuery.of(context).size.width * .015,
                  left: MediaQuery.of(context).size.width * .03,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.powerPlugOffOutline,
                            size: 50,
                            color: color_Icon_page1[1],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue.shade800),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                          ),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[1] == "◾ OFF") {
                                  on_off_page1[1] = "◾ ON";
                                  color_Icon_page1[1] = Colors.blue[200];
                                } else if (on_off_page1[1] == "◾ ON") {
                                  on_off_page1[1] = "◾ OFF";
                                  color_Icon_page1[1] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[1],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Plug Ammar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[1],
                        style: TextStyle(
                          color: color_Icon_page1[1],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: EdgeInsets.all(
                  MediaQuery.of(context).size.width * .015,
                ),
                height: MediaQuery.of(context).size.height * .18,
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .030,
                          ),
                          child: Icon(
                            MdiIcons.lightSwitch,
                            size: 50,
                            color: color_Icon_page1[2],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade800),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * .048,
                            bottom: MediaQuery.of(context).size.width * .048,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .15,
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (on_off_page1[2] == "◾ OFF") {
                                  on_off_page1[2] = "◾ ON";
                                  color_Icon_page1[2] = Colors.blue[200];
                                } else if (on_off_page1[2] == "◾ ON") {
                                  on_off_page1[2] = "◾ OFF";
                                  color_Icon_page1[2] = Colors.grey[300];
                                }
                              });
                            },
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.power_settings_new_outlined,
                              size: 30,
                              color: color_Icon_page1[2],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .2,
                      ),
                      child: Text(
                        "Bilik Hana",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .28,
                      ),
                      child: Text(
                        on_off_page1[2],
                        style: TextStyle(
                          color: color_Icon_page1[2],
                          fontSize: MediaQuery.of(context).size.width * .028,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
