import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Center(
        child: CupertinoSwitch(
          value: Provider.of<ThemeProvider>(context).isDarkMode,
          onChanged: (bool value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
        ),
      ),
    );
  }
}
