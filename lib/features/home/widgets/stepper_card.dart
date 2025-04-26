import 'package:flutter/material.dart';

class StepperCard extends StatelessWidget {
  final StepDetails details;
  final bool isLast;

  const StepperCard({super.key, required this.details, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: details.isCompleted ? Colors.blue : Colors.grey,  width: 3),
                  ),
                ),
                Expanded(
                  child: VerticalDivider(color: isLast ? Colors.transparent : (details.isCompleted ? Colors.blue : Colors.grey), thickness: 2),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex:6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          details.name,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            height: 1.0
                          ),
                        ),
                        Text(
                          details.location,
                          style: const TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  Flexible(
                    flex: 4,
                    child: Text(
                      details.time,
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            // child: ListTile(
            //   title: Text(
            //     details.name,
            //     style: const TextStyle(color: Colors.black54, fontSize: 12),
            //   ),
            //   subtitle: Text(
            //     details.location,
            //     style: const TextStyle(color: Colors.black, fontSize: 14),
            //   ),
            //   trailing: Text(
            //     details.time,
            //     style: const TextStyle(color: Colors.black, fontSize: 14),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}

class StepDetails {
  final String name, location, time;
  final bool isCompleted;

  StepDetails({
    required this.name,
    required this.location,
    required this.time,
    this.isCompleted = false,
  });
}
