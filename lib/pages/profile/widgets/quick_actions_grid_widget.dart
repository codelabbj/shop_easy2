import 'package:flutter/material.dart';
import 'package:shop_easy3/pages/profile/widgets/quick_action_widget.dart';

class QuickActionsGrid extends StatelessWidget {
  const QuickActionsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 2.5,
      children: [
        QuickActionCard(
          icon: Icons.favorite_border,
          title: 'Saved items',
          onTap: () {},
        ),
        QuickActionCard(
          icon: Icons.chat_bubble_outline,
          title: '2 messages',
          onTap: () {},
        ),
        QuickActionCard(
          icon: Icons.star_border,
          title: 'Reviews',
          onTap: () {},
        ),
        QuickActionCard(
          icon: Icons.access_time,
          title: 'Recently viewed',
          onTap: () {},
        ),
      ],
    );
  }
}
