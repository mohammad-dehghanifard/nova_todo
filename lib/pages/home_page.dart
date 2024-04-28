import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_todo/pages/add_or_edit_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context) => const AddOrEditPage()));
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: const Color(0xFF9395D3),
        child: const Icon(Icons.add,color: Colors.white),
      ),
      backgroundColor: const Color(0XFFD6D7EF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF9395D3),
        title: Text("TODO APP",style: GoogleFonts.jost(color : Colors.white,fontSize : 24,fontWeight : FontWeight.bold)),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: const Offset(0,4)
                      )
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("title",style: GoogleFonts.jost(color : const Color(0XFF9395D3),fontSize : 16,fontWeight : FontWeight.bold)),
                          Text("title",style: GoogleFonts.jost(fontSize : 14,fontWeight : FontWeight.w400))
                        ],
                      ),
                      const Spacer(),
                      IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.pen,color: Color(0xFFB3B7EE),)),
                      IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.delete,color: Color(0xFFB3B7EE)))
                    ],
                  ),
                );
              },
          ),
        ),
      ),
    );
  }
}
