import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/movie_model.dart';

class FirestoreUtils {
  static CollectionReference<MovieModel> getCollection() {
    return FirebaseFirestore.instance
        .collection('watchlist')
        .withConverter<MovieModel>(
      fromFirestore: (snapshot, _) =>
          MovieModel.fromFirestore(snapshot.data()!),
      toFirestore: (movie, _) => movie.toFirestore(),
    );
  }

  static Future<void> addDataToFirestore(MovieModel movie) async {
    try {
      var collectionRef = getCollection();
      await collectionRef.doc(movie.id.toString()).set(movie);
    } catch (e) {
      print("Error adding movie to Firestore: $e");
    }
  }

  static Future<void> deleteDataFromFirestore(int movieId) async {
    try {

      var collectionRef = getCollection();
      await collectionRef.doc(movieId.toString()).delete();
    } catch (e) {
      // Handle error (e.g., print, show dialog, etc.)
      print("Error deleting movie from Firestore: $e");
    }
  }

  static Future<List<MovieModel>> getDataFromFirestore() async {
    try {
      var snapshot = await getCollection().get();
      return snapshot.docs.map((element) => element.data()).toList();
    } catch (e) {
      print("Error fetching movies from Firestore: $e");
      return [];
    }
  }

  static Stream<QuerySnapshot<MovieModel>> getRealTimeDataFromFirestore() {
    return getCollection().snapshots();
  }
}
