import 'package:flutter/material.dart';

class RentalPage extends StatefulWidget {
  const RentalPage({super.key});

  @override
  State<RentalPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<RentalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.0,
              children: [
                // LOCATION TEXT
                Text(
                  "Your location",
                  style: TextStyle(color: Colors.grey.shade400),
                ),

                // ACTUAL LOCATION & ICON
                Row(
                  spacing: 8.0,
                  children: [
                    // LOCATION ICON
                    Icon(Icons.location_on, color: Colors.white),

                    // ACTUAL LOCATION
                    Text(
                      "Highway Conventional Area, Chicago",
                      style: TextStyle(
                        color: Color(0xffa8a8a8),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 8.0,
                      children: [
                        // PROFILE PICTURE
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            "assets/images/profile.jpg",
                          ),
                        ),

                        // NOTIFICATION ICON
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_on_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          style: IconButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),

                    // MENU ICON
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: Colors.white, size: 18),
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8),

                // CONTACT BOX
                Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  height: 150,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
