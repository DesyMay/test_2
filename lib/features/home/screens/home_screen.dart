import 'package:flutter/material.dart';
import 'package:test_2/features/home/widgets/map_widget.dart';

import '../widgets/stepper_card.dart';
import '../widgets/stepper_widget.dart';
import '../widgets/vessel_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 0.32 * size.height,
                width: size.width,
                child: MapWidget(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.7,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0XFF000000).withValues(alpha: 0.3),
                      blurRadius: 5,
                      offset: Offset(0.0, -2.0),
                    ),
                  ],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      size.height * 0.02 > 10 ? 10 : size.height * 0.02,
                    ),
                  ),
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    VesselInfo(
                      name: 'PRELUDE',
                      grossTonnage: "499167",
                      built: "2017",
                      iMO: "9648714",
                      deadWeight: "394330",
                      size: "488 / 74m",
                      mMSI: "503000101",
                    ),
                    Divider(
                      height: 0.0,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: size.width,
                        child: StepperWidget(
                          details: [
                            StepDetails(name: 'Delivery to cust', location: 'Tegalgede, Jember, Indonesia', time: '17 Feb 2023', isCompleted: true),
                            StepDetails(name: 'Transit', location: 'Soekarto-Hatta, Jakarta, Indonesia', time: '6 Feb 2023'),
                            StepDetails(name: 'Arrive at sorting center', location: 'Av. de Luis Aragones, Madrid, Spanyol', time: '31 Jan 2023'),
                            StepDetails(name: 'Picked', location: 'Av. de Luis Aragones, Madrid, Spanyol', time: '29 Jan 2023'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




