import 'package:workout_planner_app/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> exerciseList = [
    Exercise(
      id: 0,
      exerciseName: "Leg Raises",
      exerciseImgURL: "assets/exercises/leg_raises.png",
      numOfMin: 3,
      exerciseDes:
          "Leg raises are a great core-strengthening exercise that targets the lower abs. Lie flat on your back and lift your legs straight up, keeping them together and controlled.",
      completed: false,
    ),
    Exercise(
      id: 1,
      exerciseName: "Dumbbell Squat",
      exerciseImgURL: "assets/exercises/dumbbell_squat.png",
      numOfMin: 5,
      exerciseDes:
          "Dumbbell squats target the legs and glutes. Hold a dumbbell in each hand at your sides and squat down until your thighs are parallel to the floor, then stand back up.",
      completed: false,
    ),
    Exercise(
      id: 2,
      exerciseName: "Renegade Row",
      exerciseImgURL: "assets/exercises/renegade_row.png",
      numOfMin: 4,
      exerciseDes:
          "Renegade rows work the back, shoulders, and core. Start in a plank position holding dumbbells and alternate rowing each dumbbell towards your waist.",
      completed: false,
    ),
    Exercise(
      id: 3,
      exerciseName: "Lunge with Dumbbells",
      exerciseImgURL: "assets/exercises/lunge_dumbbell.png",
      numOfMin: 5,
      exerciseDes:
          "This move strengthens your legs and improves balance. Step forward into a lunge while holding dumbbells, then push back to the starting position.",
      completed: false,
    ),
    Exercise(
      id: 4,
      exerciseName: "Front Dumbbell Raise",
      exerciseImgURL: "assets/exercises/front_dumbbell_raise.png",
      numOfMin: 3,
      exerciseDes:
          "A shoulder exercise targeting the front delts. Raise the dumbbells in front of you to shoulder height, then lower them slowly.",
      completed: false,
    ),
    Exercise(
      id: 5,
      exerciseName: "Dumbbell Curl",
      exerciseImgURL: "assets/exercises/dumbbell_curl.png",
      numOfMin: 3,
      exerciseDes:
          "Dumbbell curls strengthen your biceps. Hold the dumbbells at your sides and curl them upward, then lower them with control.",
      completed: false,
    ),
    Exercise(
      id: 6,
      exerciseName: "Hammer Curl",
      exerciseImgURL: "assets/exercises/hammer_curl.png",
      numOfMin: 3,
      exerciseDes:
          "Hammer curls are a variation of the standard curl that targets the biceps and forearms. Keep your palms facing inward as you lift.",
      completed: false,
    ),
    Exercise(
      id: 7,
      exerciseName: "Flat Bench Press",
      exerciseImgURL: "assets/exercises/flat_bench_press.png",
      numOfMin: 4,
      exerciseDes:
          "A classic chest exercise. Lie on a flat bench and press the barbell or dumbbells upward from chest level, then lower under control.",
      completed: false,
    ),
    Exercise(
      id: 8,
      exerciseName: "Incline Bench Press",
      exerciseImgURL: "assets/exercises/incline_bench_press.png",
      numOfMin: 4,
      exerciseDes:
          "This variation of the bench press targets the upper chest. Perform the movement on an incline bench for upper pec development.",
      completed: false,
    ),
    Exercise(
      id: 9,
      exerciseName: "Incline Fly",
      exerciseImgURL: "assets/exercises/incline_fly.png",
      numOfMin: 4,
      exerciseDes:
          "Incline flys isolate the chest muscles. Lie on an incline bench and slowly bring the dumbbells together in a wide arc motion.",
      completed: false,
    ),
    Exercise(
      id: 10,
      exerciseName: "Preacher Curl",
      exerciseImgURL: "assets/exercises/preacher_curl.png",
      numOfMin: 4,
      exerciseDes:
          "Preacher curls isolate the biceps. Sit on a preacher bench and curl the barbell or dumbbell upwards, focusing on controlled motion.",
      completed: false,
    ),
    Exercise(
      id: 11,
      exerciseName: "Rest",
      exerciseImgURL: "assets/exercises/rest.png",
      numOfMin: 2,
      exerciseDes:
          "Rest and recovery are essential for muscle growth and injury prevention. Take this time to hydrate and prepare for the next set.",
      completed: false,
    ),
  ];
}
