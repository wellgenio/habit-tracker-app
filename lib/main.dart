import 'package:flutter/material.dart';
import 'package:habit_tracker/app_widget.dart';
import 'package:habit_tracker/database/habit_database.dart';
import 'package:habit_tracker/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize database
  await HabitDatabase.initalize();
  await HabitDatabase().saveFirstLaunchDate();

  runApp(
    MultiProvider(
      providers: [
        // habits provider
        ChangeNotifierProvider(create: (context) => HabitDatabase()),
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const AppWidget(),
    ),
  );
}
