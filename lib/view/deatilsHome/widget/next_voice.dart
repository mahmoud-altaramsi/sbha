import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sbha/controller/colors/color_app.dart';
import 'package:sbha/controller/sbha_counter/snha_counter_one.dart';

class NextVoice extends StatelessWidget {
  NextVoice({super.key});
  final cont = Get.put(SbhaControllerApp());
  List<String> nextVoice = ['سبحان الله', 'الحمدلله', 'الله اكبر'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        nextVoice[0],
        style: const TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
