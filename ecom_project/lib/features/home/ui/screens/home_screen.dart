import 'package:ecom_project/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String name = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AssetsPath.longLogoSvg),
        actions: [
          CircleAvatar(backgroundColor: Colors.grey.shade300,radius: 16,child: Icon(Icons.person),)
        ],
      ),
    );
  }
}
