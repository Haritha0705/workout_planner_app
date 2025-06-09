class Exercise {
  final int id;
  final String exerciseName;
  final String exerciseImgURL;
  final int numOfMin;
  bool completed;

  Exercise({
    required this.id,
    required this.exerciseName,
    required this.exerciseImgURL,
    required this.numOfMin,
    required this.completed,
  });
}