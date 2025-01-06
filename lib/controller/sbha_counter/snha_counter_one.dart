import 'package:get/get_state_manager/get_state_manager.dart';

class SbhaControllerApp extends GetxController {
  int start = 0;
  int rollStart = 0;
  int sber = 0;
  int sber2 = 0;
  void startCounterSbha() {
    start++;
    update();
  }

  void rollStartCounterSbha() {
    rollStart++;
    update();
  }

  void resetStartCounterSbha() {
    start = 0;
    update();
  }

  void rollResetStartCounterSbha() {
    rollStart = 0;
    update();
  }
}
