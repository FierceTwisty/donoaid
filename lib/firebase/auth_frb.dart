import 'package:donoaid/firebase/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

class AuthServ {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  UserMod? _userMap(User? user) {
    if (user == null) {
      return null;
    }
    return UserMod(user.uid, user.email);
  }

  Stream<UserMod?>? get user {
    return _firebaseAuth.authStateChanges().map(_userMap);
  }

  Future<UserMod?> signIn(String? email, String? password) async {
    if (email != null && password != null) {
      try {
        final creds = await _firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        return _userMap(creds.user);
      } on FirebaseAuthException catch (e) {
        var msg;

        if (e.code == 'user-not-found') {
          msg = 'No user found for that email.';
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          msg = 'Wrong password provided for that user.';
          print('Wrong password provided for that user.');
        }

        return msg;
      } catch (err) {
        print(err.toString());
      }
    }
    throw {
      print("signin shit happened"),
    };
  }

  Future<UserMod?> signUp(String? email, String? password) async {
    if (email != null && password != null) {
      try {
        final creds = await _firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);

        return _userMap(creds.user);
      } on FirebaseAuthException catch (e) {
        var msg;

        if (e.code == 'weak-password') {
          msg = 'The password provided is too weak.';
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          msg = 'The account already exists for that email.';
          print('The account already exists for that email.');
        }

        return msg;
      } on PlatformException catch (e) {
        print("user already exists");
      }
    }
    throw {
      print("signup shit happened"),
    };
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }

  // User? user(User? usr) {
  //   if (usr == null) {
  //     return null;
  //   }

  //   return (usr);

  //   // return UserMod(user.)
  // }

  // AuthServ(this._firebaseAuth);

  // Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Future<void> signOut() async {
  //   await _firebaseAuth.signOut();
  // }

  // Future<UserMod?> signIn({String email, String? password}) async {
  //   if (email != null && password != null) {
  //     try {
  //       await _firebaseAuth.signInWithEmailAndPassword(
  //           email: email, password: password);
  //       // return "Signed IN";
  //     } on FirebaseAuthException catch (e) {
  //       var msg;

  //       if (e.code == 'weak-password') {
  //         msg = 'The password provided is too weak.';
  //         print('The password provided is too weak.');
  //       } else if (e.code == 'email-already-in-use') {
  //         msg = 'The account already exists for that email.';
  //         print('The account already exists for that email.');
  //       }
  //       if (e.code == 'user-not-found') {
  //         msg = 'No user found for that email.';
  //         print('No user found for that email.');
  //       } else if (e.code == 'wrong-password') {
  //         msg = 'Wrong password provided for that user.';
  //         print('Wrong password provided for that user.');
  //       }

  //       return msg;
  //     }
  //   }
  //   throw {print("null shit happened")};
  // }

  // Future<String> signUp({String? email, String? password}) async {
  //   if (email != null && password != null) {
  //     try {
  //       await _firebaseAuth.createUserWithEmailAndPassword(
  //           email: email, password: password);
  //       return "Signed UP";
  //     } on FirebaseAuthException catch (e) {
  //       var msg;

  //       if (e.code == 'weak-password') {
  //         msg = 'The Signed UP password provided is too weak.';
  //         print(msg);
  //       } else if (e.code == 'email-already-in-use') {
  //         msg = 'The Signed UP account already exists for that email.';
  //         print(msg);
  //       }
  //       if (e.code == 'user-not-found') {
  //         msg = 'No Signed UP user found for that email.';
  //         print(msg);
  //       } else if (e.code == 'wrong-password') {
  //         msg = 'Wrong Signed UP password provided for that user.';
  //         print(msg);
  //       }

  //       return msg;
  //     }
  //   }
  //   throw {print("null shit signup")};
  // }
}
// import './auth_form.dart';

// class AuthFrb extends StatefulWidget {
//   @override
//   _AuthFrbState createState() => _AuthFrbState();
// }

// class _AuthFrbState extends State<AuthFrb> {
//   FirebaseAuth _auth = FirebaseAuth.instance;
//   var _isLoading = false;

//   void _submitAuthForm(
//     String email,
//     String password,
//     String username,
//     bool isLogin,
//     BuildContext ctx,
//   ) async {
//     try {
//       // UserCredential userCred;
//       setState(() {
//         _isLoading = true;
//       });
//       if (isLogin) {
//         await _auth.signInWithEmailAndPassword(
//           email: email,
//           password: password,
//         );
//       } else {
//         await _auth.createUserWithEmailAndPassword(
//           email: email,
//           password: password,
//         );

// //----------------------------------------------------------------------------//

// //this is to be used for adding image to the cloud.........

// //        final ref = FirebaseStorage.instance
// //            .ref()
// //            .child('user_image')
// //            .child(authResult.user.uid + '.jpg');
// //
// //        await ref.putFile(image).onComplete;
// //
// //        final url = await ref.getDownloadURL();

// //----------------------------------------------------------------------------//

//         // await Firestore.instance
//         //     .collection('users')
//         //     .document(authResult.user.uid)
//         //     .setData({
//         //   'username': username,
//         //   'email': email,
//         // });
//       }
//     } on FirebaseAuthException catch (e) {
//       var msg;

//       if (e.code == 'weak-password') {
//         msg = 'The password provided is too weak.';
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         msg = 'The account already exists for that email.';
//         print('The account already exists for that email.');
//       }
//       if (e.code == 'user-not-found') {
//         msg = 'No user found for that email.';
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         msg = 'Wrong password provided for that user.';
//         print('Wrong password provided for that user.');
//       }

//       final snackBar = SnackBar(content: Text(msg), backgroundColor: Colors.red,);

//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       setState(() {
//         _isLoading = false;
//       });
//     } catch (err) {
//       print(err);
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200], //change thru colorRGB
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             // color: Colors.grey[100], //change thru colorRGB
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'DonoAid',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 40,
//                     fontWeight: FontWeight.w600,
//                     fontFamily: 'Raleway',
//                     ),
//               ),
//             ),
//           ),
//           AuthForm(
//             _submitAuthForm,
//             _isLoading,
//           ),
//         ],
//       ),
//     );
//   }
// }

