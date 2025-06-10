import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';

class ProgesCard extends StatefulWidget {

  final int total;
  final double progessVal;

  const ProgesCard({
    super.key, 
    required this.total, 
    required this.progessVal
  });

  @override
  State<ProgesCard> createState() => _ProgesCardState();
}

class _ProgesCardState extends State<ProgesCard> {
  @override
  Widget build(BuildContext context) {

    int done = (widget.progessVal * widget.total).toInt();

    return Container(
      width: double.infinity,
      height: 230,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [HGradientTopColor, HGradientBottomColor],
        ) 
      ),
      child: Padding(
        padding: const EdgeInsets.all(HDefaultPadding*2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Proteins, Fats & Carbohydrates",
              style: TextStyle(
                color: HMainWhiteColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10), 
            LinearProgressIndicator(
              value: widget.progessVal,
              backgroundColor: HGradientBottomColor,
              valueColor: AlwaysStoppedAnimation(HMainPinkColor),
              minHeight: 15,
              borderRadius: BorderRadius.circular(100),
            ),
            const SizedBox(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTag("Done", done.toString()),
                _buildTag("Totel", widget.total.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTag (String title,String value){
  return Column(
    children: [
      Text(title,
      style: TextStyle(
      fontSize: 16, 
      fontWeight: FontWeight.w800,
      color: HMainWhiteColor)),
      const SizedBox(height: 5),
      Text(
        value,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: HMainWhiteColor,
        ),
      ),
    ],
  );
}

