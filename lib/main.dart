import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/ui/live_logs_screen.dart';
import 'package:beyond_factoring/src/ui/quick_screen.dart';
import 'package:beyond_factoring/src/ui/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://etxjyavbodcecjobxgdg.supabase.co/",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV0eGp5YXZib2RjZWNqb2J4Z2RnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc1MTU5OTMsImV4cCI6MjAxMzA5MTk5M30.d0MANy7TnT5F4RTttnoT4fYzzQFoe9sBTiG_fM-RpDM",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beyond Factoring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.background),
        useMaterial3: true,
      ),
      home: const QuickScreen(),
    );
  }
}
