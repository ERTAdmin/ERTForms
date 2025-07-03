// ---------- PAGE ACCUEIL ---------- //
// On arrive sur cette page une fois que l'utilisateur est connecté.

import 'package:flutter/material.dart';
import 'header.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(pageTitle: 'Accueil'),
      body: Center(
        child: Text(
          'Bienvenue sur la page d\'accueil !',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}