import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class backendmanager with ChangeNotifier {
  late GoogleSignIn googlesignin;
  late GoogleSignInAuthentication authentication;
  late String name;
  late Uri picturelink;
  late String email;
  late String Authtoken;
  late String accesstoken;

  late GoogleSignInAccount account;

  Future<void> initapp() async {
    try {
      log('initialized');
      googlesignin = GoogleSignIn();
    } catch (error) {
      throw error;
    }
  }

  Future<void> googlelogin() async {
    account = (await googlesignin.signIn())!;
    authentication = await account.authentication;
    accesstoken = authentication.accessToken!;
    //http reqs
  }
}
