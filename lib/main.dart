import 'package:flutter/material.dart';
import 'package:you_application/HomePage/budget_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:you_application/PlanPage/NewPlan.dart';
import 'package:you_application/PlanPage/PlanDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Application',
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: GoogleFonts.albertSansTextTheme()),
      home: const NewPlanPage(title: "I DOnt"),
    );
  }
}
