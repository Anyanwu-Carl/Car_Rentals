import 'package:flutter/material.dart';

class ShowCarDetailsSheet extends StatelessWidget {
  const ShowCarDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
        color: Color(0xff101010),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // CAR NAME
                    Text(
                      "Mazda CX-60",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    // CAR MODEL
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "3CA-KH3R3P",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                // CANCEL ICON
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.cancel_outlined),
                ),
              ],
            ),
          ),

          // CAR IMAGE
          Positioned(
            top: 0,
            left: 0,
            right: -90,
            child: Image.asset(
              "assets/images/car.png",
              width: double.infinity,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
          ),

          // CAR LOCATION BOX
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 180,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff333333),
                          Color(0xff2f2f2f),
                          Color(0xff575757),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // CIRCLE AVATAR
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.red,
                            ),

                            SizedBox(width: 10),

                            // CAR LOCATION COLUMN
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // CAR CURRENT LOCATION
                                Text(
                                  "203-453 west St San Francisco, CA 94114, USA",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                // DEPARTURE TIME
                                Text(
                                  "6:30 WAT (GMT+1)",
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),

                        // SECOND LOCATION
                        Row(
                          children: [
                            // DESTINATION ICON
                            Icon(Icons.flag, color: Colors.white, size: 16),

                            SizedBox(width: 10),

                            // CAR LOCATION COLUMN
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // CAR DESTINATION
                                Text(
                                  "203-453 west St San Francisco, CA 94114, USA",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                // ARRIVAL TIME
                                Text(
                                  "6:30 WAT (GMT+1)",
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        Row(
                          children: [
                            Row(
                              children: [
                                // LOCATION ICON
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(width: 5),

                                Text(
                                  "20.5 KM",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),

                            SizedBox(width: 30),

                            // TIME ICON
                            Row(
                              children: [
                                // TIME ICON
                                Icon(
                                  Icons.access_time_filled,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(width: 5),

                                Text(
                                  "30 mins",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),

                            SizedBox(width: 30),

                            Row(
                              children: [
                                // MONEY ICON
                                Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(width: 5),

                                Text(
                                  "\$70",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ARRIVAL DATE CONTAINERS
          Positioned(
            top: 500,
            child: Row(
              children: [
                // FIRST BOX
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff2c2c2c),
                          Color(0xff1e1e1e),
                          Color(0xff151515),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400.withAlpha(80),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(-2, -1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.date_range, color: Colors.white),

                            SizedBox(width: 5),

                            Text(
                              "Arrival date",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5),

                        Text(
                          "20 Jul 2024",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "Estimated",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // SECOND BOX
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff2c2c2c),
                          Color(0xff1e1e1e),
                          Color(0xff151515),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400.withAlpha(80),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(-2, -1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.flight_takeoff, color: Colors.white),

                            SizedBox(width: 5),

                            Text(
                              "Flight arrival date",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5),

                        Text(
                          "6:30 WAT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Text(
                          "Estimated",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // BOOK NOW ROW
          Positioned(
            top: 640,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "\$70",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 200),

                // BOOK NOW BUTTON
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                    backgroundColor: Colors.grey.shade400,
                  ),
                  child: Text(
                    "BOOK NOW",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
