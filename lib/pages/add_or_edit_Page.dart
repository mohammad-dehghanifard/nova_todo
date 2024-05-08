import 'package:flutter/material.dart';
import 'package:nova_todo/resources/app_colors.dart';
import 'package:nova_todo/resources/app_strings.dart';

class AddOrEditPage extends StatelessWidget {
  const AddOrEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        title: const Text(AppString.addTask,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        leading: const BackButton(color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: AppString.titleHint
              ),
            ),

            const SizedBox(height: 12),

            const TextField(
              decoration: InputDecoration(
                  hintText: AppString.detail
              ),
            ),

            const SizedBox(height: 32),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(AppColors.primary),
                minimumSize: const MaterialStatePropertyAll(Size(double.infinity,48)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                )
              ),
                onPressed: () {},
                child: const Text(AppString.add,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)
          ],
        ),
      ),
    );
  }
}
