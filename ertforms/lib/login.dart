// ---------- PAGE LOGIN ---------- //
// Cette page a pour but de ce connecter à l'application.

import 'package:flutter/material.dart';
import 'session_manager.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController identifiantController = TextEditingController();
  final TextEditingController mdpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset('assets/logo.png', height: 250),
              SizedBox(height: 32),

              // Champ Identifiant
              TextField(
                controller: identifiantController,
                decoration: InputDecoration(
                  labelText: 'Identifiant',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),

              // Champ Mot de passe
              TextField(
                controller: mdpController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),

              // Bouton Connexion
              ElevatedButton(
                onPressed: () async {
                  // Connexion réussie (à améliorer plus tard)
                  await SessionManager.setLoggedIn(true);
                  Navigator.pushNamedAndRemoveUntil(context, '/accueil', (route) => false);
                },
                child: Text('Se connecter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}