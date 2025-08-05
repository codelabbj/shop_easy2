import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey[300],
          child: Icon(
            Icons.person,
            size: 35,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aristoth Tohon',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                'View Marketplace profile',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14,
                      color: Colors.blue[600],
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
