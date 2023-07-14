import 'package:flutter/material.dart';
import 'package:foods/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  _createItem(IconData icon, String label, Function onTap ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
      ),
      onTap: ()=> onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 108,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            alignment: Alignment.bottomRight,
            child: Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(
            Icons.restaurant,
            'Refeições',
            () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
            },
          ),
          _createItem(
            Icons.settings,
            'Configurações',
            () {
              Navigator.of(context).pushNamed(AppRoutes.SETTINGS);
            },
          ),
        ],
      ),
    );
  }
}
