import 'package:flutter/material.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
class AddexErciseCard extends StatefulWidget {

  final String exsasiesTitle;
  final String exsasiesImgURL;
  final String exsasiesMin;
  final bool isAdded;
  final bool isFav;
  final void Function() toggleAddExercise;
  final void Function() toggleFav;

  const AddexErciseCard({super.key, required this.exsasiesTitle, required this.exsasiesImgURL, required this.exsasiesMin, required this.isAdded, required this.isFav, required this.toggleAddExercise, required this.toggleFav});

  @override
  State<AddexErciseCard> createState() => _AddexErciseCardState();
}

class _AddexErciseCardState extends State<AddexErciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HCardBackgroundColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 2),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(HDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.exsasiesTitle}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: HSubtitleColor,
              ),
            ),
            SizedBox(height: 5),
            Image.asset(widget.exsasiesImgURL, width: 83, fit: BoxFit.cover),
            SizedBox(height: 5),
            Text(
              "${widget.exsasiesMin.toString()} Min",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: HSubtitleColor,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
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
                    width: 50,
                    height: 50,
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
                          color: HMainPinkColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}