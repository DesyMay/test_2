import 'package:flutter/material.dart';

class VesselInfo extends StatelessWidget {
  final String name;
  final String grossTonnage;
  final String built;
  final String iMO;
  final String deadWeight;
  final String size;
  final String mMSI;

  const VesselInfo({
    super.key,
    required this.name,
    required this.grossTonnage,
    required this.built,
    required this.iMO,
    required this.deadWeight,
    required this.size,
    required this.mMSI,
  });

  Widget buildInfoItem(String label, String value) {
    return SizedBox(
      width: 100, // Adjust width based on layout needs
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(color: Colors.black54, fontSize: 12),
            ),
            const SizedBox(height: 2),
            Text(value, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Wrap(
          children: [
            buildInfoItem('Gross Tonnage:', grossTonnage),
            buildInfoItem('Built:', built),
            buildInfoItem('IMO:', iMO),
            buildInfoItem('Deadweight:', deadWeight),
            buildInfoItem('Size:', size),
            buildInfoItem('MMSI:', mMSI),
          ],
        ),
      ),
    );
  }
}