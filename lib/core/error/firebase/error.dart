import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

import 'package:scientiboost/core/error/common/error.dart' as common;

String? errorMessageWithCode({
  FirebaseAuthException? authE,
  FirebaseException? e,
}) {
  if (authE != null) {
    return common.errorMessageWithCode(authE.code);
  } else if (e != null) {
    return common.errorMessageWithCode(e.code);
  }

  return null;
}

String? errorMessageExplicit({
  FirebaseAuthException? authE,
  TimeoutException? timeE,
  FirebaseException? e,
}) {
  if (authE != null) {
    return buildErrorMessageFromFirebaseAuthExceptionCode(code: authE.code);
  } else if (timeE != null) {
    return "Problèmes de connexion internet (lente ou inexistante)";
  } else if (e != null) {
    return common.errorMessageWithCode(e.code);
  }

  return null;
}

String buildErrorMessageFromFirebaseAuthExceptionCode({required String code}) {
  switch (code) {
    case "network-request-failed":
      return "Problèmes de connexion internet";
    default:
      return "Une erreur s'est produite";
  }
}
