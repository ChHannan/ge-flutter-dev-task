import 'package:flutter/material.dart';

import 'action_sheet_tile.dart';

class ActionSheet extends StatelessWidget {
  const ActionSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 16,
            ),
            Icon(
              Icons.maximize,
              color: Colors.grey.withOpacity(0.5),
              size: 36,
            ),
            Column(
              children: const [
                ActionSheetTile(
                  title: 'Send',
                  icon: Icons.arrow_circle_up_outlined,
                  backgroundColor: Colors.amber,
                ),
                ActionSheetTile(
                  title: 'Receive',
                  icon: Icons.arrow_circle_down_outlined,
                  backgroundColor: Colors.green,
                ),
                ActionSheetTile(
                  title: 'Exchange',
                  icon: Icons.swap_horizontal_circle_outlined,
                  backgroundColor: Colors.purple,
                ),
                ActionSheetTile(
                  title: 'QR Scan',
                  icon: Icons.qr_code_scanner,
                  backgroundColor: Colors.blueAccent,
                  subtitle: 'Invoice, addresses',
                ),
              ],
            ),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.close,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
