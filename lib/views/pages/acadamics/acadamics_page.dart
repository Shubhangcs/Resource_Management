import 'package:alvas_management/views/widgets/card_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcadamicsPage extends StatelessWidget {
  const AcadamicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Acamadics',
            style: GoogleFonts.varelaRound(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.close_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body:const Column(
          children: [
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardBox(icon: Icons.abc,title: "Materials",),
                CardBox(icon: Icons.book, title: "Marks",),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardBox(icon: Icons.schedule, title: 'Time-Table',),
                CardBox(icon: Icons.person_4, title: "Mentorship",),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
