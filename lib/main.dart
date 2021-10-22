
import 'package:donoaid/firebase/auth_frb.dart';

import 'package:donoaid/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthServ>(
          create: (_) => AuthServ(),
        ),
      ],
      child: MaterialApp(
        title: "Donoaid",
        debugShowCheckedModeBanner: false,
        theme: theme(),
        // home: AuthWrap(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}



// import 'package:donoaid/firebase/auth_frb.dart';
// import 'package:donoaid/home/home_screen.dart';
// import 'package:donoaid/sign_in/sign_in_screen.dart';
// import 'package:donoaid/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'routes.dart';

// void main() {
//   runApp(MyApp());
// }

// AuthServ? ac;

// class MyApp extends StatefulWidget {
//   _MyAppState createState() => _MyAppState();
// }

// // This widget is the root of your application.
// class _MyAppState extends State<MyApp> {
//   // @override
//   bool _initialized = false;
//   bool _error = false;
//   String? xyz;

//   void initializeFlutterFire() async {
//     try {
//       await Firebase.initializeApp();

//       setState(() {
//         _initialized = true;

//         FirebaseAuth inst = FirebaseAuth.instance;
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
//         initialRoute: xyz, // use this for starting the app at sign in or up
//         // initialRoute: HomeScreen.routeName,  // use this to check ur edits in the app
//         routes: routes,
//       );
//     }
//   }
// }
