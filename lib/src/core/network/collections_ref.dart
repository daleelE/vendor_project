import 'package:cloud_firestore/cloud_firestore.dart';

class CollectionRef {
  final usersCollection =
      FirebaseFirestore.instance.collection('users_collection');
  final vendorsCollection =
      FirebaseFirestore.instance.collection('vendors_collection');
  final foundersCollection =
      FirebaseFirestore.instance.collection('founders_collection');
}