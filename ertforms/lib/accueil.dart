// ---------- PAGE ACCUEIL ---------- //
// On arrive sur cette page une fois que l'utilisateur est connecté.

import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: Center(
        child: Text(
          'Bienvenue sur la page d\'accueil !',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}