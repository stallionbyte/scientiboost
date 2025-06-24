import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:result_dart/result_dart.dart';

import '../models/subscription_model.dart';

import '../../../../core/constants.dart';
import '../../../../core/error/firebase/error.dart';

abstract class SubscriptionRepository {
  Future<ResultDart<SubscriptionModel, String>> addSubscription(
    String? userUid,
    DateTime startAt,
    DateTime expireAt,
    List<String>? subjects,
    double? price,
  );

  Future<ResultDart<SubscriptionModel, String>?> validSubscription();
}

class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  SubscriptionRepositoryImpl(this._firebaseFirestore, this._firebaseAuth);

  @override
  Future<ResultDart<SubscriptionModel, String>?> validSubscription() async {
    DateTime? queryExpireAt;
    Map<String, dynamic>? subscription;
    try {
      final userUid = _firebaseAuth.currentUser?.uid;

      final query =
          await _firebaseFirestore
              .collection("subscriptions")
              .where("userUid", isEqualTo: userUid)
              .get();

      if (query.docs.isEmpty) {
        return null;
      } else {
        for (var doc in query.docs) {
          queryExpireAt = (doc.data()["expireAt"] as Timestamp).toDate();
          if (queryExpireAt.isAfter(DateTime.now())) {
            subscription = doc.data();
            break;
          }
        }
      }

      if (subscription != null) {
        return Success(SubscriptionModel.fromJson(subscription));
      } else {
        return null;
      }
    } on FirebaseException catch (e) {
      return Failure(errorMessageWithCode(e: e) as String);
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }

  @override
  Future<ResultDart<SubscriptionModel, String>> addSubscription(
    String? userUid,
    DateTime startAt,
    DateTime expireAt,
    List<String>? subjects,
    double? price,
  ) async {
    try {
      final subscription = <String, dynamic>{
        "userUid": userUid,
        "startAt": startAt,
        "expireAt": expireAt,
        "subjects": subjects,
        "price": price,
      };

      await _firebaseFirestore.collection("subscriptions").add(subscription);

      return Success(SubscriptionModel.fromJson(subscription));
    } on FirebaseException catch (e) {
      return Failure(errorMessageWithCode(e: e) as String);
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }
}
