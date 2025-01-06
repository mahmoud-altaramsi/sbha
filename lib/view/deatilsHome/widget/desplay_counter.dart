import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sbha/controller/colors/color_app.dart';
import 'package:sbha/controller/sbha_counter/snha_counter_one.dart';

class DesplayCounter extends StatelessWidget {
  DesplayCounter({super.key});
  final cont = Get.put(SbhaControllerApp());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
          color: ColorsAppSbha.darkslategray,
          border: Border.all(
            color: ColorsAppSbha.goldenrod,
            width: 10,
          ),
          borderRadius: BorderRadius.circular(130)),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                  color: ColorsAppSbha.yGoldenrod,
                  borderRadius: BorderRadius.circular(8)),
              child: GetBuilder<SbhaControllerApp>(
                // init: SbhaControllerApp(),
                builder: (controller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${controller.sber2}",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w100,
                          color: ColorsAppSbha.white,
                        ),
                      ),
                      Text(
                        "${controller.rollStart}",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          color: ColorsAppSbha.white,
                        ),
                      ),
                      Text(
                        "${controller.sber}",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w100,
                          color: ColorsAppSbha.white,
                        ),
                      ),
                      Text(
                        "${controller.start}",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          color: ColorsAppSbha.white,
                        ),
                      ),
                    ],
                  );
                },
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: ColorsAppSbha.yGoldenrod,
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {
                        cont.resetStartCounterSbha();
                        cont.rollResetStartCounterSbha();
                      },
                      icon: Icon(
                        Icons.restart_alt_rounded,
                        size: 50,
                        color: ColorsAppSbha.white,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: ColorsAppSbha.yGoldenrod,
                borderRadius: BorderRadius.circular(100)),
            child: TextButton(
              onPressed: () {
                if (cont.start == 33) {
                  cont.resetStartCounterSbha();
                  cont.rollStartCounterSbha();
                } else {
                  cont.startCounterSbha();
                }
                if (cont.rollStart > 3) {
                  cont.rollResetStartCounterSbha();
                }
              },
              child: Text(
                "سبح",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 43,
                    color: ColorsAppSbha.white),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
