import 'package:flutter/material.dart';
import 'package:sbha/controller/colors/color_app.dart';
import 'package:sbha/view/deatilsHome/deatils_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "صد..قة جارية",
          style: TextStyle(fontSize: 40, color: ColorsAppSbha.white),
        ),
        backgroundColor: ColorsAppSbha.darkslategray,
      ),
      body: DetalsHome(),
    );
  }
}
