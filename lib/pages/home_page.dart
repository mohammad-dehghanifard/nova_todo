import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nova_todo/pages/add_or_edit_Page.dart';
import 'package:nova_todo/resources/app_colors.dart';
import 'package:nova_todo/resources/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context) => const AddOrEditPage(),));
        },
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        ),
        child: const Icon(Icons.add,color: Colors.white,),
      ),
      backgroundColor: AppColors.homeScaffoldBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(AppString.appBarTitle,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(.25),blurRadius: 4,offset: const Offset(0,4))
                  ]
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Title",style: TextStyle(color: AppColors.iconColor,fontWeight: FontWeight.bold,fontSize: 18),),
                          Text("content",style: TextStyle(color: AppColors.textColor,fontSize: 12),),
                        ],
                      ),
                      const Spacer(),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.edit,color: AppColors.iconColor,)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever,color: AppColors.iconColor)),
                    ],
                  ),
                ),
              );
            },
        ),
      ),
    );
  }
}
