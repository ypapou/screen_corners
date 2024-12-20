import 'package:flutter/material.dart';
import 'package:screen_corners/screen_corners.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenCorners.initScreenCorners();
  runApp(const ScreenCornersApp());
}

class ScreenCornersApp extends StatelessWidget {
  const ScreenCornersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Screen Corners'),
        ),
        body: Center(
          child: Text(
            'Screen Corners: ${ScreenCorners.corner.value}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
