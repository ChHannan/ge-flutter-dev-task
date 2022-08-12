import 'package:flutter/material.dart';

import 'expansion_card.dart';
import 'info_card.dart';
import 'search_field.dart';

class TokenView extends StatelessWidget {
  const TokenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchField(),
        const SizedBox(height: 24),
        const InfoCard(
          title: 'Waves',
          highlightedNumber: '5',
          unHighlightedNumber: '0005',
          icon: Icons.check,
          url: 'https://clipground.com/images/blue-diamond-clipart-8.png',
        ),
        const InfoCard(
          title: 'Pigeon',
          highlightedNumber: '1444',
          unHighlightedNumber: '04556321',
          icon: Icons.unfold_more,
          symbol: 'P',
        ),
        const InfoCard(
          title: 'US Dollar',
          highlightedNumber: '199',
          unHighlightedNumber: '24',
          icon: Icons.check,
          url:
              'https://www.pngkit.com/png/full/116-1162859_amator-economicus-green-dollar-sign-icon.png',
        ),
        ExpansionCard(
          title: 'Hidden tokens (2)',
          body: Container(),
        ),
        ExpansionCard(
          title: 'Suspicious tokens (15)',
          body: Container(),
        ),
      ],
    );
  }
}
