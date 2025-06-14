import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner_app/const_styles/colors.dart';
import 'package:workout_planner_app/const_styles/responsive.dart';
import 'package:workout_planner_app/models/equipment_model.dart';
import 'package:workout_planner_app/widgets/equipmentsCard.dart';


class EquipmentDetailsPage extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentDes;
  final List<Equipment> equipmentList;
  const EquipmentDetailsPage({
    super.key,
    required this.equipmentTitle,
    required this.equipmentDes,
    required this.equipmentList,
  });

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  final DateFormat formmter = DateFormat('EEEE,MMMM');
  final DateFormat datFormmter = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formatDate = formmter.format(now);
    String dayFormat = datFormmter.format(now);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$formatDate $dayFormat",
              style: TextStyle(
                fontSize: 15,
                color: HSubtitleColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              widget.equipmentTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: HMainColor,
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
              Text(
                widget.equipmentDes,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: HMainColor,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: HDefaultPadding,
                  mainAxisSpacing: HDefaultPadding,
                  childAspectRatio: 3 / 2,
                ),
                itemCount: widget.equipmentList.length,
                itemBuilder: (context, index) {
                  Equipment equipment = widget.equipmentList[index];
                  return (Equipmentcard(
                    equipmentName: equipment.equipmentName,
                    equipmentDes: equipment.equipmentDes,
                    equipmentImgURL: equipment.equipmentImgURL,
                    noOfMin: equipment.noOfMin,
                    noOfCalaris: equipment.noOfCalaris,
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
