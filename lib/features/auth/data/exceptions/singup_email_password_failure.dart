import 'package:flutter/foundation.dart';

class SignUpWithEmailAndPasswordFailure{
    final String message;
    const SignUpWithEmailAndPasswordFailure([this.message = 'An Unknown error occurred']);
    factory SignUpWithEmailAndPasswordFailure.code(String code){
      switch(code){
        case 'weak-password': return const SignUpWithEmailAndPasswordFailure('The password provided is too weak.');
        case 'email-already-in-use': return const SignUpWithEmailAndPasswordFailure('email-already-in-use');
        case 'user-not-found': return const SignUpWithEmailAndPasswordFailure('No user found for that email');
        case 'invalid-email': return const SignUpWithEmailAndPasswordFailure('email  is not valid or badly formatted');
        case 'operation-not-allowed': return const SignUpWithEmailAndPasswordFailure('Operation not allowed. please contact support');
        case 'user-disabled': return const SignUpWithEmailAndPasswordFailure('this user   has been disabled. please contact support ');

        default: return const SignUpWithEmailAndPasswordFailure();
      }

    }

}