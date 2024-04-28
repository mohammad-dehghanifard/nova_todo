import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddOrEditPage extends StatelessWidget {
  const AddOrEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF9395D3),
        automaticallyImplyLeading: false,
        leading: const BackButton(color: Colors.white),
        title: Text("ADD TASK",style: GoogleFonts.jost(color : Colors.white,fontSize : 24,fontWeight : FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: GoogleFonts.jost(color : const Color(0XFF8B8787),fontSize :16)
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Detail",
                hintStyle: GoogleFonts.jost(color : const Color(0XFF8B8787),fontSize :16)
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              style:  ButtonStyle(
                minimumSize: const MaterialStatePropertyAll(Size(double.infinity,55)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                backgroundColor: const MaterialStatePropertyAll(Color(0xFF9395D3))
              ),
              child: Text("ADD",style: GoogleFonts.jost(color : Colors.white,fontSize : 24,fontWeight : FontWeight.bold)),)
          ],
        ),
      ),
    );
  }
}
