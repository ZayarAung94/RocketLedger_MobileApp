import 'package:get/get.dart';
import 'package:rocketledger/models/add_order.dart';

import 'orderinput_validator.dart';

class OrderController extends GetxController {
  List<AddOrder> activeOrder = [];

  addOrder(String num, String amount, String rAmount, String type) {
    if (type != "") {
      switch (type) {
        case "ထိပ်":
          addStartWith(num, amount, type);
          break;
        case "ပိတ်":
          addEndWith(num, amount, type);
          break;
        case "ဘြိတ်":
          break;
        case "ပတ်":
          addSeries(num, amount, type);
          break;
        case 'ခွေ':
          addMix(num, amount, type);
          break;
        case 'ခွေပူး':
          addMixDouble(num, amount, type);
          break;
        case 'အပူး':
          addDouble(amount, type);
          break;
        case 'စုံပူး':
          addDoubleEven(amount, type);
          break;
        case 'မပူး':
          addDoubleOdd(amount, type);
          break;
        case 'ပါဝါ':
          addPower();
          break;
        case 'နက္ခ':
          addNPower();
          break;
        case 'ညီကို':
          addBrother();
          break;
        case 'ကိုညီ':
          addRBrother();
          break;
        case 'ညီကို R':
          addBrotherR();
          break;
        case 'စုံမ':
          addEvenOdd(amount, type);
          break;
        case 'မစုံ':
          addOddEven();
          break;
        case 'စုံမ R':
          addEvenOddR();
          break;
        case 'မစုံ R':
          addOddEvenR();
          break;
      }
    } else {
      if (rAmount == "0" || rAmount == "") {
        activeOrder.add(
          AddOrder(
            number: num,
            amount: int.parse(amount),
            orderType: type == "" ? "Normal" : "$num $type",
          ),
        );
      } else {
        activeOrder.add(
          AddOrder(
            number: num,
            amount: int.parse(amount),
            orderType: "$num-${amount}R$rAmount",
          ),
        );
        activeOrder.add(
          AddOrder(
            number: '${num[1]}${num[0]}',
            amount: int.parse(rAmount),
            orderType: "$num-${amount}R$rAmount",
          ),
        );
      }
    }

    update();
  }

  void dropOrder(AddOrder order) {
    activeOrder.remove(order);
    update();
  }

  bool inputValidate(String value, int index, String type) {
    switch (index) {
      case 1:
        return OrderinputValidator.validNumbar(value, type);
      case 2:
        return OrderinputValidator.validAmount(value);
    }
    return true;
  }

  clear() {
    activeOrder = [];
    update();
  }

  String getTotalAmount() {
    int amount = 0;
    for (var order in activeOrder) {
      amount = amount + order.amount;
    }
    return amount.toString();
  }

// Add Order by type =========================
  add(String num, int amount, String type) {
    activeOrder.add(
      AddOrder(number: num, amount: amount, orderType: type),
    );
  }

  addStartWith(String num, String amount, String orderType) {
    for (int i = 0; i < 10; i++) {
      activeOrder.add(
        AddOrder(
          number: '$num$i',
          amount: int.parse(amount),
          orderType: "$num $orderType",
        ),
      );
    }
  }

  addEndWith(String num, String amount, String orderType) {
    for (int i = 0; i < 10; i++) {
      activeOrder.add(
        AddOrder(
          number: '$i$num',
          amount: int.parse(amount),
          orderType: '$num $orderType',
        ),
      );
    }
  }

  addBreak(String num, String amount, String type) {}

  addSeries(String num, String amount, String type) {
    for (int i = 0; i < 10; i++) {
      if (num == i.toString()) {
        activeOrder.add(
          AddOrder(
            number: "$num$num",
            amount: int.parse(amount),
            orderType: "$num $type",
          ),
        );
      } else {
        activeOrder.add(
          AddOrder(
            number: '$num$i',
            amount: int.parse(amount),
            orderType: '$num $type',
          ),
        );
        activeOrder.add(
          AddOrder(
            number: '$i$num',
            amount: int.parse(amount),
            orderType: '$num $type',
          ),
        );
      }
    }
  }

  addMix(String num, String amount, String type) {
    for (int i = 0; i < num.length; i++) {
      String main = num[i];

      for (int i = 0; i < num.length; i++) {
        if (main != num[i]) {
          add('$main${num[i]}', int.parse(amount), '$num $type');
        }
      }
    }
  }

  addMixDouble(String num, String amount, String type) {
    for (int i = 0; i < num.length; i++) {
      String main = num[i];

      for (int i = 0; i < num.length; i++) {
        add('$main${num[i]}', int.parse(amount), '$num $type');
      }
    }
  }

  addDouble(String amount, String type) {
    List<String> number = ['11', "22", '33', '44', '55', '66', '77', '88', '99'];

    for (var num in number) {
      add(num, int.parse(amount), type);
    }
  }

  addDoubleEven(String amount, String type) {
    List<String> number = ['00', '22', '44', '66', '88'];
    for (var num in number) {
      add(num, int.parse(amount), type);
    }
  }

  addDoubleOdd(String amount, String type) {
    List<String> number = ['11', '33', '55', '77', '99'];
    for (var num in number) {
      add(num, int.parse(amount), type);
    }
  }

  addPower() {}

  addNPower() {}

  addBrother() {}

  addRBrother() {}

  addBrotherR() {}

  addEvenOdd(String amount, String type) {
    for (int i = 0; i < 10; i++) {
      if (i.isEven) {
        for (int n = 0; n < 10; n++) {
          if (n.isOdd) {
            add('$i$n', int.parse(amount), type);
          }
        }
      }
    }
  }

  addOddEven() {}

  addEvenOddR() {}

  addOddEvenR() {}
}
