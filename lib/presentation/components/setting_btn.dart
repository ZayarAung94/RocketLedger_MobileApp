import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class SettingBtn extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function()? onTap;
  final String? value;
  final bool? isSwitch;
  final void Function(bool)? switchTap;

  final String? description;
  const SettingBtn({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
    this.value,
    this.isSwitch,
    this.switchTap,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Card(
        elevation: 10,
        margin: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
        color: AppColors.background,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label),
                      if (description != null)
                        SizedBox(
                          width: 200,
                          child: Text(
                            description!,
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              if (isSwitch != null)
                SizedBox(
                  height: 25,
                  child: Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      value: isSwitch!,
                      onChanged: switchTap,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      activeColor: AppColors.info,
                    ),
                  ),
                ),
              if (isSwitch == null)
                Row(
                  children: [
                    Text(value ?? ""),
                    const SizedBox(width: 10),
                    Icon(Icons.chevron_right_rounded, color: onTap == null ? Colors.grey.shade800 : Colors.white),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
