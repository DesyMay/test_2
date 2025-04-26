import 'package:flutter/material.dart';

import 'stepper_card.dart';

class StepperWidget extends StatelessWidget {
  final List<StepDetails> details;
  const StepperWidget({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      interactive: true,
      thumbVisibility: true,
      child: ListView.builder(
        itemCount: details.length,
        itemBuilder: (context, index) {
          final detail = details[index];
          return StepperCard(
            details: detail,
            isLast: index == details.length-1,
          );
        },
      ),
    );
  }
}