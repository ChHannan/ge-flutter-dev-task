import 'package:assessment/utils/constants.dart';
import 'package:assessment/widgets/progress_bar.dart';
import 'package:flutter/material.dart';

class LeaseInfoCard extends StatelessWidget {
  final String availableBalance;
  final String leaseBalance;
  final String totalBalance;

  const LeaseInfoCard({
    Key? key,
    required this.availableBalance,
    required this.leaseBalance,
    required this.totalBalance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: kCardBoxShadow,
      ),
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Available Balance',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            availableBalance,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const ProgressBar(
            progress: 70,
            backgroundColor: kProgressBackgroundColor,
            progressColor: kProgressColor,
          ),
          const SizedBox(
            height: 8,
          ),
          LeaseStatusTile(
            title: leaseBalance,
            label: 'Leased',
            isDone: true,
          ),
          const Divider(
            color: Colors.grey,
          ),
          LeaseStatusTile(
            title: totalBalance,
            label: 'Total',
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 16,
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              backgroundColor: kProgressBackgroundColor,
            ),
            onPressed: () {},
            child: Text(
              'Start Lease',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LeaseStatusTile extends StatelessWidget {
  final String title;
  final String label;
  final bool isDone;

  const LeaseStatusTile({
    Key? key,
    required this.title,
    required this.label,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isDone ? kProgressColor : Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
