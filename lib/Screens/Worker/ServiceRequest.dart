// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animated_icons/lottiefiles.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class ServiceRequest extends StatefulWidget {
  const ServiceRequest({super.key, required String title});

  @override
  State<ServiceRequest> createState() => _ServiceRequestState();
}

class _ServiceRequestState extends State<ServiceRequest>
    with TickerProviderStateMixin {
  late AnimationController _bellController;

  @override
  void initState() {
    _bellController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _bellController.dispose();
    super.dispose();
  }

  String locationadress = "1.0 km away";

  final myTextStyles = TextStyle(
      color: Colors.black,
      fontFamily: "Lato",
      fontWeight: FontWeight.bold,
      fontSize: 14);

  final myTextStyleslow =
      TextStyle(color: Colors.grey, fontFamily: "Lato", fontSize: 08);

  final myBoxDecoration = BoxDecoration(
    border: Border.all(
      color: Colors.grey,
    ),
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );

  Widget mainBody() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "20 Requests",
            style: myTextStyles,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20),
            decoration: myBoxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Akash Vikrant",
                                  style: myTextStyles,
                                ),
                                Text(
                                  "Kitchen and Cleaning",
                                  style: myTextStyleslow,
                                ),
                                Text(
                                  "Rs/- 500",
                                  style: myTextStyles,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  endIndent: 5,
                  indent: 5,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.room,
                            color: Color(0xFF0A1D56),
                          ),
                          TextButton(
                            onPressed: () {
                              _showModal(context);
                            },
                            child: InkWell(
                              child: Text(
                                locationadress,
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              onTap: () {
                                _showModal(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFF0A1D56),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "7 May, 23",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "02:30 pm",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Color(0xFF0A1D56),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "1 Room, floor cleaning",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.height * 1.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Are You Sure",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              IconButton(
                                color: Colors.green,
                                onPressed: () {
                                  if (_bellController.isAnimating) {
                                    // _bellController.stop();
                                    _bellController.reset();
                                  } else {
                                    _bellController.repeat();
                                  }
                                },
                                icon: Lottie.asset(
                                  LottieFiles
                                      .$89782_done_icon_with_long_drop_shadow,
                                  controller: _bellController,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width * 0.90,
                                decoration: BoxDecoration(
                                  color: Color(0xFF0A1D56),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Pay Now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Lato",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xFF0A1D56),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20),
            decoration: myBoxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Akash Vikrant",
                                  style: myTextStyles,
                                ),
                                Text(
                                  "Kitchen and Cleaning",
                                  style: myTextStyleslow,
                                ),
                                Text(
                                  "Rs/- 500",
                                  style: myTextStyles,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  endIndent: 5,
                  indent: 5,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.room,
                            color: Color(0xFF0A1D56),
                          ),
                          TextButton(
                            onPressed: () {
                              _showModal(context);
                            },
                            child: InkWell(
                              child: Text(
                                locationadress,
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              onTap: () {
                                _showModal(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFF0A1D56),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "7 May, 23",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "02:30 pm",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Color(0xFF0A1D56),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "1 Room, floor cleaning",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF0A1D56),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 20),
            decoration: myBoxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.deepPurple,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Akash Vikrant",
                                  style: myTextStyles,
                                ),
                                Text(
                                  "Kitchen and Cleaning",
                                  style: myTextStyleslow,
                                ),
                                Text(
                                  "Rs/- 500",
                                  style: myTextStyles,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                  endIndent: 5,
                  indent: 5,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.room,
                            color: Color(0xFF0A1D56),
                          ),
                          TextButton(
                            onPressed: () {
                              _showModal(context);
                            },
                            child: InkWell(
                              child: Text(
                                locationadress,
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              onTap: () {
                                _showModal(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFF0A1D56),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "7 May, 23",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "02:30 pm",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Color(0xFF0A1D56),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "1 Room, floor cleaning",
                            style: TextStyle(
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF0A1D56),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Delete",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A1D56),
        title: Center(
          child: Text(
            "Service Requests",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            mainBody(),
          ],
        ),
      ),
    );
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          height: null,
          child: Center(
            child: OpenStreetMapSearchAndPick(
              // center: LatLong(23, 89),
              buttonColor: Colors.blue,
              buttonText: 'Set Current Location',
              onPicked: (pickedData) {
                Navigator.pop(context);
                setState(() {
                  locationadress = pickedData.address as String;
                });
                // Handle picked data
              },
            ),
          ),
        );
      },
    );
  }
}
