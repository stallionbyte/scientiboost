import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:result_dart/result_dart.dart';

import 'package:scientiboost/features/subscription/data/models/subscription_model.dart';

import 'package:scientiboost/core/helpers.dart' as helpers;

import 'package:scientiboost/core/constants.dart';

import 'package:scientiboost/core/error/firebase/error.dart';

abstract class SubscriptionRepository {
  Future<ResultDart<List<SubscriptionModel>, String>> addSubscriptions({
    required List<SubscriptionModel> subscriptions,
  });

  Future<ResultDart<List<SubscriptionModel>, String>?> validSubscriptions();
}

class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  SubscriptionRepositoryImpl(this._firebaseFirestore, this._firebaseAuth);

  @override
  Future<ResultDart<List<SubscriptionModel>, String>?>
  validSubscriptions() async {
    DateTime? queryExpireAt;
    Map<String, dynamic>? subscription;
    final userUid = _firebaseAuth.currentUser?.uid;
    final subjects = ["pc", "svt", "math"];
    List<SubscriptionModel> subscriptions = [];
    try {
      externeLoop:
      for (var subject in subjects) {
        var query =
            await _firebaseFirestore
                .collection("subscriptions_$subject")
                .where("userUid", isEqualTo: userUid)
                .get();

        if (query.docs.isEmpty) {
          continue externeLoop;
        } else {
          for (var doc in query.docs) {
            queryExpireAt = (doc.data()["expireAt"] as Timestamp).toDate();
            if (queryExpireAt.isAfter(DateTime.now())) {
              subscription = doc.data();
              subscriptions.add(SubscriptionModel.fromJson(subscription));
              continue externeLoop;
            }
          }
        }
      }

      if (subscriptions.isNotEmpty) {
        return Success(subscriptions);
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
  Future<ResultDart<List<SubscriptionModel>, String>> addSubscriptions({
    required List<SubscriptionModel> subscriptions,
  }) async {
    try {
      List<SubscriptionModel> subscriptions_ = [];

      for (var subscription in subscriptions) {
        var subscription_ = <String, dynamic>{
          "userUid": subscription.userUid,
          "startAt": subscription.startAt,
          "expireAt": subscription.expireAt,
          "subject": subscription.subject,
          "price": subscription.price,
        };

        await _firebaseFirestore
            .collection(
              "subscriptions_${helpers.getSubjectShortName(subject: subscription.subject)}",
            )
            .add(subscription_);

        subscriptions_.add(SubscriptionModel.fromJson(subscription_));
      }

      if (subscriptions_.isNotEmpty) {
        return Success(subscriptions_);
      } else {
        return Failure("Aucun abonnement enrégistré");
      }
    } on FirebaseException catch (e) {
      return Failure(errorMessageWithCode(e: e) as String);
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }
}
