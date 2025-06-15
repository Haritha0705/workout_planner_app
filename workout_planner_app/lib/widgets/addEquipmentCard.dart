import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';

class AddEquipmentCard extends StatefulWidget {

  final String equipmentName;
  final String equipmentDes;
  final String equipmentImgURL;
  final int noOfMin;
  final double noOfCalaris;
  final bool isAdded;
  final bool isFav;
  final void Function() toggleAddExercise;
  final void Function() toggleFav;

  const AddEquipmentCard({super.key, required this.equipmentName, required this.equipmentDes, required this.equipmentImgURL, required this.noOfMin, required this.noOfCalaris, required this.isAdded, required this.isFav, required this.toggleAddExercise, required this.toggleFav});

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HDefaultPadding),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: HCardBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.equipmentName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: HMainColor,
              ),
            ),
            SizedBox(height: 30),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(
                  widget.equipmentImgURL,
                  fit: BoxFit.cover,
                  width: 100,
                ),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.noOfMin.toString()} of workout",
                      style: const TextStyle(
                        color: HMainPinkColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${widget.noOfCalaris.toString()} of Calaris",
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
              "${widget.equipmentDes}",
              style: const TextStyle(
                color: HMainColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HSubtitleColor.withOpacity(0.2),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleAddExercise();
                        },
                        icon: Icon(
                          widget.isAdded ? Icons.remove : Icons.add,
                          size: 30,
                          color: HGradientBottomColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: HSubtitleColor.withOpacity(0.2),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleFav();
                        },
                        icon: Icon(
                          widget.isFav ? Icons.favorite : Icons.favorite_border,
                          size: 30,
                          color: HMainColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}