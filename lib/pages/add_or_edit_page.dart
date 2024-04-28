import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:nova_todo/database/task_model.dart';

class AddOrEditPage extends StatefulWidget {
   const AddOrEditPage({super.key, required this.task,});
  final TaskModel task;

  @override
  State<AddOrEditPage> createState() => _AddOrEditPageState();
}

class _AddOrEditPageState extends State<AddOrEditPage> {
  final TextEditingController taskTitle = TextEditingController();

  final TextEditingController taskDetail = TextEditingController();

  final Box<TaskModel> box = Hive.box("tasks");

  @override
  void initState() {
    super.initState();
    if(widget.task.isInBox) {
      taskTitle.text = widget.task.title!;
      taskDetail.text = widget.task.detail!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF9395D3),
        automaticallyImplyLeading: false,
        leading: const BackButton(color: Colors.white),
        title: Text(
            widget.task.isInBox? "EDIT TASK" :"ADD TASK",
            style: GoogleFonts.jost(color : Colors.white,fontSize : 24,fontWeight : FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: taskTitle,
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: GoogleFonts.jost(color : const Color(0XFF8B8787),fontSize :16)
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: taskDetail,
              decoration: InputDecoration(
                hintText: "Detail",
                hintStyle: GoogleFonts.jost(color : const Color(0XFF8B8787),fontSize :16)
              ),
            ),
            const SizedBox(height: 32),

            ElevatedButton(
              onPressed: () async {
                if(widget.task.isInBox) {
                  Navigator.pop(context);
                  widget.task.title = taskTitle.text;
                  widget.task.detail = taskDetail.text;
                  widget.task.save();
                } else {
                  Navigator.pop(context);
                  final newTask = TaskModel();
                  newTask.title = taskTitle.text;
                  newTask.detail = taskDetail.text;
                  box.add(newTask);
                }
              },
              style:  ButtonStyle(
                minimumSize: const MaterialStatePropertyAll(Size(double.infinity,55)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                ),
                backgroundColor: const MaterialStatePropertyAll(Color(0xFF9395D3))
              ),
              child: Text(
                  widget.task.isInBox? "EDIT" :"ADD",
                  style: GoogleFonts.jost(color : Colors.white,fontSize : 24,fontWeight : FontWeight.bold)),)
          ],
        ),
      ),
    );
  }
}
