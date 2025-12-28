import 'package:flutter/material.dart';
import 'sensors/motion_tracker.dart';
import 'sensors/light_meter.dart';
import 'sensors/explorer_tool.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sensor Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sensor Explorer')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.vibration),
            title: const Text('Motion Tracker'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MotionTracker()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: const Text('Light Meter'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LightMeter()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.explore),
            title: const Text('Explorer Tool'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ExplorerTool()),
              );
            },
          ),
        ],
      ),
    );
  }
}
