class OrderinputValidator {
  static bool validNumbar(String value, String type) {
    switch (value) {
      case "??":
        return false;
      case "?":
        return false;
      case "":
        return false;
    }
    if (type == "") {
      if (value.length == 2) {
        return true;
      }
    } else {
      if (type == "ထိပ်" || type == "ပိတ်" || type == "ပတ်") {
        if (value.length == 1) {
          return true;
        }
      } else if (type == 'ခွေ' || type == "ခွေပူး") {
        if (value.length > 2) {
          return true;
        }
      }
    }

    return false;
  }

  static bool validAmount(String value) {
    switch (value) {
      case "0":
        return false;
      case "":
        return false;
    }

    return true;
  }
}
