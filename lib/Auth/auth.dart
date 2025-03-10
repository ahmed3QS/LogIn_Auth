import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Auth {
  // دالة لتسجيل مستخدم جديد
  Future<void> signup({
    required String email, // البريد الإلكتروني للمستخدم
    required String password, // كلمة المرور للمستخدم
    required String name, // كلمة المرور للمستخدم
  }) async {
    try {
      // محاولة تسجيل المستخدم باستخدام Firebase Authentication
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // إظهار رسالة نجاح
      Fluttertoast.showToast(
          msg: 'Account created successfully!',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 14.0);
    } on FirebaseAuthException catch (e) {
      // معالجة الأخطاء المتوقعة
      String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email';
      } else if (e.code == 'name-already-in-use') {
        message = 'An Name already exists with that Name';
      } else {
        message = 'An unexpected error occurred. Please try again.';
      }
      Fluttertoast.showToast(
          msg: message,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
          fontSize: 14.0);
    } catch (e) {
      // معالجة الأخطاء غير المتوقعة
      Fluttertoast.showToast(
          msg: 'An error occurred: $e',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 14.0);
    }
  }
}
