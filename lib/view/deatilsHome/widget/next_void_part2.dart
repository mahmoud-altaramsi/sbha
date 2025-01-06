import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/sbha_counter/snha_counter_one.dart';

class NextVoicePart2 extends StatelessWidget {
  NextVoicePart2({super.key});
  final cont = Get.put(SbhaControllerApp());
  List<String> nextVoice = ['sbhan allahi', 'alhimdalalhu', 'allah akbar'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        cont.rollStart == 1
            ? "${nextVoice[0]}"
            : cont.rollStart == 2
                ? "${nextVoice[1]}"
                : cont.rollStart == 3
                    ? "${nextVoice[2]}"
                    : "${nextVoice[0]}",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
