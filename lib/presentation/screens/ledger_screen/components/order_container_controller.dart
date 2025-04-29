import 'package:get/get.dart';

class OrderContainerController extends GetxController {
  var rAmountStatus = true.obs;
  var numberStatus = true.obs;
  var numberValue = "??".obs;
  var typeValue = "".obs;
  var amountValue = "0".obs;
  var rAmountValue = '0'.obs;
  var inputFocus = 1.obs;

  List<String> btnLabel = [
    'Normal',
    'ခွေ',
    'ခွေပူး',
    'အပူး',
    'စုံပူး',
    'မပူး',
    'ပါဝါ',
    'နက္ခ',
    'ညီကို',
    'ကိုညီ',
    'ညီကို R',
    'စုံမ',
    'မစုံ',
    'စုံမ R',
    'မစုံ R',
  ];
}
