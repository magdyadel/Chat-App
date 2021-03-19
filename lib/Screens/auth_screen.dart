import 'dart:math';

import 'package:chat_app/Widgets/auth/auth_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _auth=FirebaseAuth.instance;
  var _isLoading=false;

  void _submitAuthForm(
      String email,
      String password,
      String username,
      bool isLogin,
      BuildContext ctx,
      )async{
    AuthResult authResult;
    try {
      setState(() {
        _isLoading = true;
      });
      if (isLogin) {
        authResult = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else {
        authResult = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        await Firestore.instance
            .collection('users')
            .document(authResult.user.uid)
            .setData({
          'username': username,
          'email': email,
        });
      }
    } on PlatformException catch (err) {
      var message = 'An error occurred, pelase check your credentials!';

      if (err.message != null) {
        message = err.message;
      }


      Scaffold.of(ctx).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(ctx).errorColor,
        ),
      );
      setState(() {
        _isLoading=false;
      });
    }catch(error){
      setState(() {
        _isLoading=false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              margin: EdgeInsets.only(bottom: 20.0),
              padding:
              EdgeInsets.symmetric(vertical: 8.0, horizontal: 94.0),
              transform: Matrix4.rotationZ(-8 * pi / 180)
                ..translate(-10.0),
              // ..translate(-10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange.shade400,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.black26,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                'Chats',
                style: TextStyle(
                  color: Theme.of(context).accentTextTheme.headline1.color,
                  fontSize: 50,
                  fontFamily: 'Anton',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          AuthForm(
            _submitAuthForm,
            _isLoading,
          ),
        ],
      ),
    );
  }

}
