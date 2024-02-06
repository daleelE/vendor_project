import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/network/collections_ref.dart';
import '../../../domain/use_cases/auth/sign_up_email_password_use_case.dart';
import '../../models/founder_model.dart';
import '../../models/user_model.dart';
import '../../models/vendor_model.dart';

abstract class BaseAuthRemoteSource {
  Future<UserCredential> signUpWithEmailAndPassword(SignUpEmailParam param);
  Future<void> createNewUser(UserModel user);
  Future<void> createVendor(VendorModel vendor);
  Future<void> createFounder(FounderModel founder);
}

class AuthFirebase extends BaseAuthRemoteSource {
  final FirebaseAuth _auth;
  final CollectionRef _ref;

  AuthFirebase(this._auth, this._ref);



  @override
  Future<UserCredential> signUpWithEmailAndPassword(SignUpEmailParam param) {
    return _auth.createUserWithEmailAndPassword(
      email: param.email,
      password: param.password,
    );
  }

  @override
  Future<void> createNewUser(UserModel user) {
    return _ref.usersCollection.doc(user.photoUrl).set(user.toJson);
  }

  @override
  Future<void> createVendor(VendorModel vendor) {
   return _ref.vendorsCollection.doc(vendor.id).set(vendor.toJson);
  }

  @override
  Future<void> createFounder(FounderModel founder) {
    return _ref.foundersCollection.doc(founder.id).set(founder.toJson);
  }
}
