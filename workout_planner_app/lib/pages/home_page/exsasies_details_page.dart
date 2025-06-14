import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';


class ExsasiesEachDetailsPage extends StatefulWidget {
  final String title;
  final String imgUrl;
  final String discription;

  const ExsasiesEachDetailsPage({
    super.key, required this.title, required this.imgUrl, required this.discription,

  });

  @override
  State<ExsasiesEachDetailsPage> createState() => _ExsasiesEachDetailsPageState();
}

class _ExsasiesEachDetailsPageState extends State<ExsasiesEachDetailsPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.title}",
              style: TextStyle(
                fontSize: 20,
                color: HMainColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HDefaultPadding),
          child: Column(
            children: [
              Image.asset(widget.imgUrl, width: 127, fit: BoxFit.cover), 
              Text(
                "${widget.discription}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: HMainColor,
                ),
              ),
  
              






            ],
          ),
        ),
      ),
    );
  }
}
