// // import 'package:donoaid/home.dart';
// import 'package:donoaid/sign_in/sign_in_screen.dart';
// // import 'package:donoaid/home/home_screen.dart';
// import 'package:donoaid/theme.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// import 'package:firebase_core/firebase_core.dart';
// // import 'sign_up/sign_up_screen.dart';
// import 'routes.dart';

// void main() {
//   // WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   _MyAppState createState() => _MyAppState();
// }

// // This widget is the root of your application.
// class _MyAppState extends State<MyApp> {
//   // @override
//   bool _initialized = false;
//   bool _error = false;

//   void initializeFlutterFire() async {
//     try {
//       await Firebase.initializeApp();

//       setState(() {
//         _initialized = true;
//       });
//     } catch (e) {
//       setState(() {
//         _error = true;
//       });
//     }
//   }

//   @override
//   void initState() {
//     initializeFlutterFire();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_error) {
//       return Text("Shit went wrong");
//     }
//     if (!_initialized) {
//       return CircularProgressIndicator();
//     } else {
//       return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: theme(),
//         initialRoute:
//             SignInScreen.routeName, // use this for staring the app at sign in
//         // initialRoute: HomeScreen.routeName,  // use this to check ur edits in the app
//         routes: routes,
//       );
//     }
//   }
// }

// //-------------------------------------------------------------//

// import 'package:donoaid/firebase/auth_frb.dart';
// import 'package:donoaid/home/home_screen.dart';
// import 'package:donoaid/sign_in/sign_in_screen.dart';
// import 'package:donoaid/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'routes.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   _MyAppState createState() => _MyAppState();
// }
//
// // This widget is the root of your application.
// class _MyAppState extends State<MyApp> {
//   // @override
//   bool _initialized = false;
//   bool _error = false;
//   String? xyz;
//
//   void initializeFlutterFire() async {
//     try {
//       await Firebase.initializeApp();
//
//       setState(() {
//         _initialized = true;
//         AuthServ(FirebaseAuth.instance);
//
//         FirebaseAuth inst = FirebaseAuth.instance;
//         AuthServ(inst);
//         inst.authStateChanges().listen((User? user) {
//           if (user == null) {
//             xyz = SignInScreen.routeName;
//           } else {
//             xyz = HomeScreen.routeName;
//           }
//         });
//       });
//     } catch (e) {
//       setState(() {
//         _error = true;
//       });
//     }
//   }
//
//   @override
//   void initState() {
//     initializeFlutterFire();
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (_error) {
//       return Text("Shit went wrong");
//     }
//     if (!_initialized) {
//       return CircularProgressIndicator();
//     } else {
//       return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: theme(),
//         initialRoute: xyz, // use this for starting the app at sign in or up
//         // initialRoute: HomeScreen.routeName,  // use this to check ur edits in the app
//         routes: routes,
//       );
//     }
//   }
// }

import 'package:donoaid/firebase/auth_frb.dart';
import 'package:donoaid/home/home_screen.dart';
import 'package:donoaid/sign_in/sign_in_screen.dart';
// import 'package:donoaid/details/details_screen.dart';
import 'package:donoaid/routes.dart';
import 'package:donoaid/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

// This widget is the root of your application.
class _MyAppState extends State<MyApp> {
  // @override
  bool _initialized = false;
  bool _error = false;
  String? xyz;

  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();

      setState(() {
        _initialized = true;
        AuthServ(FirebaseAuth.instance);

        FirebaseAuth inst = FirebaseAuth.instance;
        AuthServ(inst);
        inst.authStateChanges().listen((User? user) {
          if (user == null) {
            xyz = SignInScreen.routeName;
          } else {
            xyz = HomeScreen.routeName;
          }
        });
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return Text("Shit went wrong");
    }
    if (!_initialized) {
      return CircularProgressIndicator();
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        initialRoute: HomeScreen.routeName,
        routes: routes,
      );
    }
  }
}

// -------------------------------------------------------------//

