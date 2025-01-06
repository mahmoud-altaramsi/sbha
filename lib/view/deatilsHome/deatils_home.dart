import 'package:flutter/material.dart';
import 'package:sbha/view/deatilsHome/widget/desplay_counter.dart';
import 'package:sbha/view/deatilsHome/widget/next_voice.dart';
import 'package:sbha/view/deatilsHome/widget/next_void_part2.dart';

import '../../controller/colors/color_app.dart';

class DetalsHome extends StatelessWidget {
  const DetalsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/ass.jpg'),
                  fit: BoxFit.fitHeight),
            ),
            child: Column(
              children: [
                NextVoice(),
                SizedBox(
                  height: 30,
                ),
                NextVoicePart2(),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 510,
                          decoration: BoxDecoration(
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
