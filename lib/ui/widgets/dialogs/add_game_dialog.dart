import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rocketledger/ui/components/app_button.dart';
import 'package:rocketledger/ui/components/app_form.dart';

import '../../constant.dart';

class AddGameDialog extends StatefulWidget {
  const AddGameDialog({
    super.key,
  });

  @override
  State<AddGameDialog> createState() => _AddGameDialogState();
}

class _AddGameDialogState extends State<AddGameDialog> {
  DateTime now = DateTime.now();

  DateTime selectDate = DateTime.now();
  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now().add(const Duration(hours: 2));
  String limit = "10,000";
  TextEditingController nameController = TextEditingController();

  String selectedDate = DateFormat('dd-MM-yyyy (EEEE)').format(DateTime.now());
  String startTimeString = DateFormat('hh:mm a').format(DateTime.now());
  String endTimeString = DateFormat('hh:mm a').format(DateTime.now().add(
    const Duration(hours: 2),
  ));

  String selectedSamtBtn = 'custom';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: MyColor.background,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 3),
            child: Text(
              "Add Game Dialog",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ),
          const Divider(color: MyColor.backgroundAlt),
          // Body: gameTitle, startTime, endTime, date, limit,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [
                  SegmentedButton(
                    showSelectedIcon: false,
                    segments: const [
                      ButtonSegment(value: 'custom', label: Text('Custom')),
                      ButtonSegment(value: 'am', label: Text('AM')),
                      ButtonSegment(value: 'pm', label: Text('PM')),
                    ],
                    selected: <String>{selectedSamtBtn},
                    onSelectionChanged: (Set<String> newSelection) {
                      setState(() {
                        selectedSamtBtn = newSelection.first;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  AppForms.textField(
                    label: "Game's Title...",
                    controller: nameController,
                  ),
                  AppForms.datePickerField(
                    hintText: selectedDate,
                    onTap: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(
                          const Duration(days: 7),
                        ),
                      );

                      if (date != null) {
                        selectDate = date;
                        setState(() {
                          selectedDate =
                              DateFormat('dd-MM-yyyy (EEEE)').format(date);
                        });
                      }
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppForms.timePickerField(
                          label: "Start Times",
                          hintText: startTimeString,
                          onTap: () async {
                            TimeOfDay? time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay(hour: now.hour, minute: now.minute),
                            );

                            if (time != null) {
                              startTime = DateTime(
                                selectDate.year,
                                selectDate.month,
                                selectDate.day,
                                time.hour,
                                time.minute,
                              );

                              setState(() {
                                startTimeString =
                                    DateFormat('hh:mm a').format(startTime);
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: AppForms.timePickerField(
                          label: "End Times",
                          hintText: endTimeString,
                          onTap: () async {
                            TimeOfDay? time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay(hour: now.hour, minute: now.minute),
                            );

                            if (time != null) {
                              endTime = DateTime(
                                selectDate.year,
                                selectDate.month,
                                selectDate.day,
                                time.hour,
                                time.minute,
                              );

                              setState(() {
                                endTimeString =
                                    DateFormat('hh:mm a').format(endTime);
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  AppForms.selectDataField(
                    label: "Game Limit",
                    items: ['10,000', '_30,000', '_Unlimited'],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppButton.normalBtn(
                  label: "Cancle",
                  onPressed: () {
                    Get.back();
                  },
                ),
                const SizedBox(width: 8),
                AppButton.normalBtn(
                  label: "Add Game",
                  onPressed: () {
                    Map gameData = {
                      "name": nameController.text,
                      "date": selectDate,
                      "startTime": startTime,
                      "endTime": endTime,
                      "limit": limit,
                    };

                    print(gameData);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
