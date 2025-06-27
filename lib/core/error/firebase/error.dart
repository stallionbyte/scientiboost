import 'package:firebase_auth/firebase_auth.dart';

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
