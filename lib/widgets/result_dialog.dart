import '../core/constants.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => ResultDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(kResult),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTile(0.0, kAmountFloor),
            _buildTile(0.0, kAmountFloorToFooter),
            _buildTile(0.0, kTotalFloor),
            Divider(),
            _buildTile(0.0, kAreaWithoutFooter),
            _buildTile(0.0, kAreaWithFooter),
            _buildTile(0.0, 'Preço Total'),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(double value, String description) {
    return ListTile(
      title: Text(value.toStringAsFixed(kDecimalPrecision)),
      subtitle: Text(description),
    );
  }
}
