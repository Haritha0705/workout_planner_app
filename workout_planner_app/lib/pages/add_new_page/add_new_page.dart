import 'package:flutter/material.dart';
import 'package:workout_planner_app/const/responsive.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(HDefaultPadding),
            child: Column(
              children: [
                Center(
                  child: 
                  Text("Add New Page"))
                ]),
          ),
        ),
      ),
    );
  }
}
