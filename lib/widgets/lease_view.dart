import 'package:assessment/utils/constants.dart';
import 'package:flutter/material.dart';

import 'expansion_card.dart';
import 'lease_info_card.dart';

class LeaseView extends StatelessWidget {
  const LeaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LeaseInfoCard(
          availableBalance: '105.0054',
          leaseBalance: '1435.000355601',
          totalBalance: '1540.00905601',
        ),
        const SizedBox(height: 24),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            boxShadow: kCardBoxShadow,
          ),
          child: const ListTile(
            title: Text(
              'View History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
        ),
        const SizedBox(height: 16),
        ExpansionCard(
          title: 'Active now (2)',
          body: Container(),
        ),
      ],
    );
  }
}
