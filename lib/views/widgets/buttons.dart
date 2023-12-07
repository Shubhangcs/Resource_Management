import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtons extends StatefulWidget {
  final VoidCallback onPressed;
  final Color color;
  final String title;
  final Color fontColor;
  const CustomButtons(
      {super.key,
      required this.onPressed,
      required this.color,
      required this.title , required this.fontColor});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(widget.color),
        ),
        child: Text(
          widget.title,
          style: GoogleFonts.varelaRound(
              color: widget.fontColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
