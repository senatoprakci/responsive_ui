import 'package:flutter/material.dart';
import 'package:instagram_ui/responsive/desktop_scaffold.dart';
import 'package:instagram_ui/responsive/mobile_scaffold.dart';
import 'package:instagram_ui/responsive/responsive_layout.dart';
import 'package:instagram_ui/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),

      ),
    );
  }
}
