import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';


class Equipmentcard extends StatelessWidget {
  final String equipmentName;
  final String equipmentDes;
  final String equipmentImgURL;
  final int noOfMin;
  final double noOfCalaris;

  const Equipmentcard({
    super.key,
    required this.equipmentName,
    required this.equipmentDes,
    required this.equipmentImgURL,
    required this.noOfMin,
    required this.noOfCalaris,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: HCardBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              equipmentName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(equipmentImgURL, fit: BoxFit.cover, width: 100),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${noOfMin.toString()} of workout",
                      style: const TextStyle(
                        color: HMainPinkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${noOfCalaris.toString()} of Calaris",
                      style: const TextStyle(
                        color: HMainPinkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              equipmentDes,
              style: const TextStyle(
                color: HMainColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
