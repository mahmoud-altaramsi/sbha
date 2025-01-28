import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sbha/controller/sbha_counter/snha_counter_one.dart';
import 'package:sbha/view/deatilsHome/widget/desplay_counter.dart';
import 'package:sbha/view/deatilsHome/widget/next_voice.dart';
import 'package:sbha/view/deatilsHome/widget/next_void_part2.dart';

import '../../controller/colors/color_app.dart';

class DetalsHome extends StatelessWidget {
  DetalsHome({super.key});
  final cont = Get.put(SbhaControllerApp());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/ass.jpg'),
                  fit: BoxFit.fitHeight),
            ),
            child: Column(
              children: [
                NextVoice(),
                const SizedBox(
                  height: 10,
                ),
                // NextVoicePart2(),



                cont.sber == 1
                    ? Container(
                        color: ColorsAppSbha.yGoldenrod,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Text(
                          "أيعجز أحدكم أن يكسب كل يوم ألف حسنة؟ فسأله سائل من جلسائه كيف يكسب أحدنا ألف حسنة؟ قال: يسبح مائة تسبيحة فيكتب له ألف حسنة أو يحط عنه ألف خطيئة",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : const Text(''),
                const SizedBox(
                  height: 150,
                ),
                Container(
                  child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 510,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/ass.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        DesplayCounter(),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
