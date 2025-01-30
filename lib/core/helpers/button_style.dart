import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ButtonStyles {
  static ButtonStyle segementBtnStyle() {
    return ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.accent; // Selected segment color
          }
          return AppColors.background; // Unselected segment color
        },
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.black; // Selected text color
          }
          return Colors.white; // Unselected text color
        },
      ),
    );
  }
}
