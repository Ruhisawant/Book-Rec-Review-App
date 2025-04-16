import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'book_details.dart';
import 'discussion_boards.dart';
import 'profile_settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; 

//changed file name
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, 
  );
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Club App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        secondaryHeaderColor: Colors.amberAccent,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          displayMedium: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16.0),
          bodyMedium: TextStyle(fontSize: 14.0),
        ),
      ),
      // Start with the login screen
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        // '/book_details': (context) => BookDetails(),
        '/discussion': (context) => DiscussionBoards(),
        '/profile': (context) => ProfileSettings(),
      },
    );
  }
}
