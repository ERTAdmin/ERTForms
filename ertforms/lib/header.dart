
import 'package:flutter/material.dart';
import 'session_manager.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;

  const Header({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.orange[500],
      automaticallyImplyLeading: false,
      toolbarHeight: kToolbarHeight,
      title: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              // 🔹 Groupe gauche : logo + boutons
              Row(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 48,
                  ),
                  IconButton(
                    icon: const Icon(Icons.home),
                    tooltip: 'Accueil',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, '/accueil', (route) => false);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    tooltip: 'Déconnexion',
                    onPressed: () async {
                      await SessionManager.logout();
                      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                    },
                  ),
                ],
              ),

              // 🔹 Espace flexible pour centrer le titre
              const Spacer(),

              // 🔹 Titre centré
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: screenWidth * 0.4),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      pageTitle,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              // 🔹 Espace flexible entre titre et version
              const Spacer(),

              // 🔹 Version à droite
              const Text(
                'v0.0.1',
                style: TextStyle(fontSize: 16, color: Colors.blueGrey),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}