import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenButton extends StatelessWidget {
  final Widget icon;
  final String label;
  const HomeScreenButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.limeAccent.shade700,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 40,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 10),
          Text(
            label,
            style: GoogleFonts.roboto(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
