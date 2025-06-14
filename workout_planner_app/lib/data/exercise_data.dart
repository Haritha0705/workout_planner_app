import 'package:workout_planner_app/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> exerciseList = [
    Exercise(
      id: 0,
      exerciseName: "Leg Raises",
      exerciseImgURL: "assets/exercises/leg_raises.png",
      numOfMin: 3,
      exerciseDes:
          "Leg raises are a powerful core-strengthening exercise that focuses on the lower abdominal muscles. Begin by lying flat on your back with your legs extended and arms at your sides. Slowly lift your legs together without bending your knees until they are at a 90-degree angle from the floor. Engage your core throughout the movement. Then, gently lower your legs back down without letting them touch the ground. This movement improves core stability and helps build a stronger midsection. It's ideal for both beginners and advanced athletes looking to tone and tighten their lower abs.",
      completed: false,
    ),
    Exercise(
      id: 1,
      exerciseName: "Dumbbell Squat",
      exerciseImgURL: "assets/exercises/dumbbell_squat.png",
      numOfMin: 5,
      exerciseDes:
          "The dumbbell squat is a compound lower-body exercise that targets the quadriceps, hamstrings, glutes, and core. To perform it, stand upright with a dumbbell in each hand and your feet shoulder-width apart. Slowly bend your knees and lower your body into a squat position, keeping your chest lifted and your back straight. Your thighs should be parallel to the floor. Push through your heels to return to a standing position. This movement not only builds strength in the lower body but also improves posture, balance, and coordination, making it essential for full-body fitness routines.",
      completed: false,
    ),
    Exercise(
      id: 2,
      exerciseName: "Renegade Row",
      exerciseImgURL: "assets/exercises/renegade_row.png",
      numOfMin: 4,
      exerciseDes:
          "Renegade rows are a challenging full-body movement that combines a plank with a dumbbell row, targeting the back, shoulders, and core. Begin in a high plank position, gripping a dumbbell in each hand with your feet shoulder-width apart. Engage your core and lift one dumbbell towards your waist while balancing on the opposite arm. Lower the dumbbell and repeat on the other side. Keep your hips stable and avoid rotating your torso. This exercise enhances upper-body strength, improves core stability, and trains your body to stay balanced and controlled during dynamic movements.",
      completed: false,
    ),
    Exercise(
      id: 3,
      exerciseName: "Lunge with Dumbbells",
      exerciseImgURL: "assets/exercises/lunge_dumbbell.png",
      numOfMin: 5,
      exerciseDes:
          "Lunges with dumbbells are excellent for building leg strength, stability, and balance. Hold a dumbbell in each hand and stand upright. Step forward with one leg and lower your body until your front thigh is parallel to the floor and your back knee nearly touches the ground. Keep your chest upright and core engaged. Push off the front foot to return to the starting position. Alternate legs with each repetition. This exercise targets the quadriceps, hamstrings, glutes, and calves. It also improves coordination and is beneficial for functional movement in daily life.",
      completed: false,
    ),
    Exercise(
      id: 4,
      exerciseName: "Front Dumbbell Raise",
      exerciseImgURL: "assets/exercises/front_dumbbell_raise.png",
      numOfMin: 3,
      exerciseDes:
          "The front dumbbell raise is a shoulder isolation exercise that focuses primarily on the anterior deltoids. Stand upright holding dumbbells at your sides, palms facing your body. Keeping your arms straight but not locked, raise the dumbbells in front of you until they reach shoulder height. Pause briefly, then lower them back to the starting position with control. Avoid swinging or using momentum. This exercise helps improve shoulder definition and strength, enhances posture, and is a great addition to any upper body workout. It's also useful for athletes looking to improve overhead lifting ability.",
      completed: false,
    ),
    Exercise(
      id: 5,
      exerciseName: "Dumbbell Curl",
      exerciseImgURL: "assets/exercises/dumbbell_curl.png",
      numOfMin: 3,
      exerciseDes:
          "Dumbbell curls are a classic arm exercise that targets the biceps. Begin by standing with your feet hip-width apart and holding a dumbbell in each hand with your palms facing forward. Curl the dumbbells upward by bending your elbows, keeping your upper arms stationary. Once the dumbbells reach shoulder level, pause briefly, then lower them back down slowly. Maintain good posture and avoid swinging your arms. This exercise helps build strength, size, and endurance in the biceps and is a staple for improving arm aesthetics and overall upper-body power.",
      completed: false,
    ),
    Exercise(
      id: 6,
      exerciseName: "Hammer Curl",
      exerciseImgURL: "assets/exercises/hammer_curl.png",
      numOfMin: 3,
      exerciseDes:
          "Hammer curls are a biceps variation that also targets the brachialis and forearms. Hold a dumbbell in each hand with your palms facing inward, towards your torso. Keep your elbows close to your sides and curl the weights up in a controlled manner. Unlike traditional curls, you maintain a neutral grip throughout. Once the dumbbells are at shoulder height, pause and slowly return to the starting position. Hammer curls improve arm thickness and grip strength, making them valuable for athletes and anyone looking to build balanced arm development and functional upper-body strength.",
      completed: false,
    ),
    Exercise(
      id: 7,
      exerciseName: "Flat Bench Press",
      exerciseImgURL: "assets/exercises/flat_bench_press.png",
      numOfMin: 4,
      exerciseDes:
          "The flat bench press is a powerful chest exercise that also works the triceps and shoulders. Lie flat on a bench with your feet planted firmly on the floor. Hold a barbell or dumbbells above your chest with arms fully extended. Lower the weight slowly to chest level while keeping your elbows at a 45-degree angle. Then, push the weight back up until your arms are fully extended. Focus on controlled motion and full range of movement. This compound lift is key for upper-body strength and size, especially for those aiming to increase pushing power.",
      completed: false,
    ),
    Exercise(
      id: 8,
      exerciseName: "Incline Bench Press",
      exerciseImgURL: "assets/exercises/incline_bench_press.png",
      numOfMin: 4,
      exerciseDes:
          "The incline bench press emphasizes the upper portion of the pectoral muscles, while also engaging the triceps and shoulders. Position yourself on an incline bench at a 30 to 45-degree angle. Hold a barbell or dumbbells with your arms extended above your chest. Slowly lower the weight to the upper chest, then press it back up to the starting position. Maintain control throughout the movement and avoid arching your back. This exercise is especially effective for developing upper chest strength and mass, making your chest appear fuller and more balanced.",
      completed: false,
    ),
    Exercise(
      id: 9,
      exerciseName: "Incline Fly",
      exerciseImgURL: "assets/exercises/incline_fly.png",
      numOfMin: 4,
      exerciseDes:
          "Incline flys are an isolation exercise for the chest, focusing on the upper pectorals. Lie on an incline bench with a dumbbell in each hand. Extend your arms above your chest, palms facing inward, with a slight bend in the elbows. Slowly lower the dumbbells out to the sides in a wide arc, stretching the chest muscles. Bring them back together at the top with controlled motion. Avoid locking out your arms. This movement enhances muscle definition and stretch, making it an excellent complement to pressing movements in upper-body training.",
      completed: false,
    ),
    Exercise(
      id: 10,
      exerciseName: "Preacher Curl",
      exerciseImgURL: "assets/exercises/preacher_curl.png",
      numOfMin: 4,
      exerciseDes:
          "Preacher curls are a biceps isolation exercise that eliminates momentum and focuses on strict form. Sit on a preacher bench and position your arms over the pad with a barbell or dumbbell in hand. Slowly curl the weight upward, keeping your upper arms flat against the pad. Squeeze the biceps at the top, then lower the weight under control. This exercise emphasizes the lower portion of the biceps and is ideal for building peak and definition. Because of the strict posture, it's harder to cheat, making the movement highly effective for targeted growth.",
      completed: false,
    ),
    Exercise(
      id: 11,
      exerciseName: "Rest",
      exerciseImgURL: "assets/exercises/rest.png",
      numOfMin: 2,
      exerciseDes:
          "Rest is a vital component of any workout routine. During rest periods, your muscles recover, repair, and grow stronger. Take this time to hydrate, breathe deeply, and prepare mentally for the next set. Proper rest helps prevent injury, reduces muscle fatigue, and improves performance in your workout. It also allows your heart rate to return to a manageable level. Whether between sets or exercises, don't underestimate the importance of a good recovery. It's just as critical as the exercise itself for achieving long-term strength, endurance, and overall fitness progress.",
      completed: false,
    ),
  ];
}
