import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/widgets/custom_snackbar.dart';
import 'package:laza/routes/app_pages.dart';


class AuthController extends GetxController {

  static  AuthController get instance => Get.find();
  final email = TextEditingController();
  final name = TextEditingController();
  final emailUserLogin = TextEditingController();
  final passwordUserLogin = TextEditingController();
  final password = TextEditingController();


  void registerUser(String email, String password) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed(Routes.MAINSCREEN);
      customSnackBar('register successful',Colors.green);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }else{
        customSnackBar('password or email are error',Colors.red);
      }
    } catch (e) {
      print(e);
    }
  }

  void loginUser(String email, String password) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      Get.offAllNamed(Routes.MAINSCREEN);
      customSnackBar('login successful',Colors.green);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        customSnackBar('No user found for that email.',Colors.red);
      } else if (e.code == 'wrong-password') {
        customSnackBar('Wrong password provided for that user.',Colors.red);
      }else{
        customSnackBar('password or email are error',Colors.red);
      }
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAllNamed(Routes.LOGINSCREEN);
      customSnackBar('signOut successfully',Colors.yellow);
    }catch(e){
      print('something error');
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

}
