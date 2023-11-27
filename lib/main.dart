import 'package:flutter/material.dart';
import 'package:glosario_manufactura/views/dashboard/dashboard_view.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ProcessDashboard.id,
      routes: {
        ProcessDashboard.id: (_) => ProcessDashboard(),
      },
    );
  }
}
