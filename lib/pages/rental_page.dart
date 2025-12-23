import 'package:car_rental_app/components/product_price_info.dart';
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

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // LEFT ROW
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your driver on the way",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "23:32",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 68,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            "Waiting time",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      // RIGHT ROW
                      Column(
                        children: [
                          // CHAT BUTTON
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.chat),
                            label: Text("Chat"),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(100, 50),
                            ),
                          ),

                          SizedBox(height: 15),

                          // CALL BUTTON
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.call_rounded),
                            label: Text("Call"),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              fixedSize: Size(100, 50),
                              side: BorderSide(
                                color: Colors.white,
                                width: 3.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),

                // CHOOSE CAR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        "Choose your preferred car",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),

                    // SEARCH ICON
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_rounded, size: 25),
                      style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: Colors.grey.shade800,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        foregroundColor: Colors.grey.shade400,
                        fixedSize: Size(40, 55),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // CAR CONTAINER
                Container(
                  width: double.infinity,
                  height: 500,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade800),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // CAR MODEL
                      Text(
                        "Mazda CX-60",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // CATCH PHRASE
                      Text(
                        "Begin with the adventure of a lifetime",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      // CAR IMAGE
                      Image.asset(
                        "assets/images/car.png",
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft,
                      ),

                      SizedBox(height: 40),

                      // PRODUCT INFORMATION
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 5,
                            children: [
                              ProductPriceInfo(
                                label: "Full day",
                                value: "\$ 1500",
                              ),
                              ProductPriceInfo(label: "Hourly", value: "\$ 62"),
                              ProductPriceInfo(
                                label: "Engine",
                                value: "2003 cc",
                              ),
                            ],
                          ),

                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.black,
                            ),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
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
    );
  }
}
