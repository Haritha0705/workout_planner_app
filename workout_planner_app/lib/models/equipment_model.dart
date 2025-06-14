class Equipment {
  final int id;
  final String equipmentName;
  final String equipmentDes;
  final String equipmentImgURL;
  final int noOfMin;
  final double noOfCalaris;
  bool handOvered;

  Equipment({
    required this.id, 
    required this.equipmentName, 
    required this.equipmentDes, 
    required this.equipmentImgURL, 
    required this.noOfMin, 
    required this.noOfCalaris, 
    required this.handOvered, 
  });
}