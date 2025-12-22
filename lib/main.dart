import 'package:car_rental_app/pages/rental_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Car Rentals",
      home: RentalPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
