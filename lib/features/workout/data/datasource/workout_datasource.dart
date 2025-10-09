import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym_buddy/features/workout/data/model/workout_model.dart';
import 'package:injectable/injectable.dart';

abstract class WorkoutDatasource {
  Future<WorkoutModel> createWorkout(WorkoutModel workout);
  Future<List<WorkoutModel>> getWorkouts(String userId);
  Future<WorkoutModel> updateWorkout(WorkoutModel workout);
  Future<void> deleteWorkout(String userId, String workoutId);
}

@LazySingleton(as: WorkoutDatasource)
class WorkoutDatasourceImpl implements WorkoutDatasource {
  final FirebaseFirestore _firestore;

  WorkoutDatasourceImpl(this._firestore);

  @override
  Future<WorkoutModel> createWorkout(WorkoutModel workout) async {
    final docRef = _firestore
        .collection('users')
        .doc(workout.userId)
        .collection('workouts')
        .doc(workout.workoutId);

    await docRef.set(workout.toJson());

    final doc = await docRef.get();
    return WorkoutModel.fromJson(doc.data()!);
  }

  @override
  Future<List<WorkoutModel>> getWorkouts(String userId) async {
    final querySnapshot = await _firestore
        .collection('users')
        .doc(userId)
        .collection('workouts')
        .get();

    return querySnapshot.docs
        .map((doc) => WorkoutModel.fromJson(doc.data()))
        .toList();
  }

  @override
  Future<WorkoutModel> updateWorkout(WorkoutModel workout) async {
    final docRef = _firestore
        .collection('users')
        .doc(workout.userId)
        .collection('workouts')
        .doc(workout.workoutId);

    await docRef.update(workout.toJson());

    final doc = await docRef.get();
    return WorkoutModel.fromJson(doc.data()!);
  }

  @override
  Future<void> deleteWorkout(String userId, String workoutId) async {
    await _firestore
        .collection('users')
        .doc(userId)
        .collection('workouts')
        .doc(workoutId)
        .delete();
  }
}
