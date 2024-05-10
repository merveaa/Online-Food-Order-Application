import 'package:flutter/material.dart';
import 'package:online_order/components/my_drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Icon(
              Icons.food_bank_outlined,
              size: 75,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              //first navigate home page then settings page
              onTap: () => {}),
          Spacer(),
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {},
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

/**
 * 
                    Navigator.pop(context),
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage())
                  
 */