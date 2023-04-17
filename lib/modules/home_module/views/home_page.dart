import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/home_screen_button_widget.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, Josephine",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Here you can view overview of your budget",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: const Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.limeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      "My budget",
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        text: "\$",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: " 1.500.00",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const HomeScreenButton(
                              icon: Icon(
                                Icons.arrow_downward,
                                size: 16,
                                color: Colors.black,
                              ),
                              label: "Add Income",
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const HomeScreenButton(
                              icon: Icon(
                                Icons.arrow_upward,
                                size: 16,
                                color: Colors.black,
                              ),
                              label: "Add Spending",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black54,
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Budget overview",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 120,
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                      child: const Icon(
                                        Icons.arrow_downward,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.arrow_upward,
                                          size: 12,
                                          color: Colors.green,
                                        ),
                                        Text(
                                          " +2.33",
                                          style: GoogleFonts.roboto(color: Colors.green),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "Incomes",
                                  style: GoogleFonts.roboto(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "\$3.000,00",
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 120,
                            width: double.maxFinite,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                      child: const Icon(
                                        Icons.arrow_upward,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.arrow_downward,
                                          size: 12,
                                          color: Colors.red,
                                        ),
                                        Text(
                                          " +2.33",
                                          style: GoogleFonts.roboto(color: Colors.red),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  "Spending",
                                  style: GoogleFonts.roboto(
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "\$3.000,00",
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
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
    );
  }
}
