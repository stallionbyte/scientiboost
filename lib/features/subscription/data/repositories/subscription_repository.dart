import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:result_dart/result_dart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/subscription_model.dart';

import '../../../../core/constants.dart';

import '../../../auth/presentation/viewmodels/auth_viewmodel.dart';

abstract class SubscriptionRepository {
  Future<ResultDart<SubscriptionModel, String>> addSubscription(
    String? userUid,
    DateTime startAt,
    DateTime expireAt,
    List<String>? subjects,
    double? price,
  );

  Future<ResultDart<SubscriptionModel, String>?> validSubscription(Ref ref);
}

class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final FirebaseFirestore _firebaseFirestore;

  SubscriptionRepositoryImpl(this._firebaseFirestore);

  String _formatErrorMessage(FirebaseException e) {
    return "Une erreur s'est produite \n code erreur: ${e.code} \n message: ${e.message}";
  }

  @override
  Future<ResultDart<SubscriptionModel, String>?> validSubscription(
    Ref ref,
  ) async {
    DateTime? queryExpireAt;
    Map<String, dynamic>? subscription;
    try {
      final user_ = ref.read(authViewModelProvider.notifier).getUser();

      final query =
          await _firebaseFirestore
              .collection("subscriptions")
              .where("userUid", isEqualTo: user_?.uid)
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
      return Failure(_formatErrorMessage(e));
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
      return Failure(_formatErrorMessage(e));
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }
}
