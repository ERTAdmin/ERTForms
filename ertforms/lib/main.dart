import 'package:flutter/material.dart';
import 'login.dart';
import 'accueil.dart';
import 'session_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Future<String> _getInitialRoute() async {
    final loggedIn = await SessionManager.isLoggedIn();
    return loggedIn ? '/accueil' : '/login';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getInitialRoute(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return MaterialApp(
            home: Scaffold(body: Center(child: CircularProgressIndicator())),
          );
        }

        return MaterialApp(
          title: 'ERT Smart',
          theme: ThemeData(primarySwatch: Colors.orange),
          home: LoginPage(),
    
          // Déclaration des routes nommées
          initialRoute: '/login',
          routes: {
            '/login': (context) => LoginPage(),
            '/accueil': (context) => AccueilPage(),
        },
        );
      },
    );
  }
}