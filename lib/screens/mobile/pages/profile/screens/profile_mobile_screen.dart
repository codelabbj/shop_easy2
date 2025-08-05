import 'package:flutter/material.dart';

import '../widgets/profile_header_widget.dart';
import '../widgets/profile_menu_items_widget.dart';
import '../widgets/quick_actions_grid_widget.dart';

class ProfileMobileScreen extends StatelessWidget {
  const ProfileMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              ProfileHeaderWidget(),
              Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      QuickActionsGrid(),
                      Divider(),
                      SizedBox(height: 15),
                      _buildSellingSection(context),
                      Divider(),
                      SizedBox(height: 15),
                      _buildPreferencesSection(context),
                      Divider(),
                      SizedBox(height: 15),
                      _buildAccountSection(context),
                      Divider(),
                      SizedBox(height: 15),
                      _buildMoreSection(context)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSellingSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Selling',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
        ),
        ProfileMenuItemWidget(
          icon: Icons.local_offer_outlined,
          title: 'Your listings',
          onTap: () {},
        ),
        ProfileMenuItemWidget(
          icon: Icons.flash_on_outlined,
          title: 'Quick actions',
          onTap: () {},
        ),
        ProfileMenuItemWidget(
          icon: Icons.people_outline,
          title: 'Marketplace followers',
          onTap: () {},
        ),
        ProfileMenuItemWidget(
          icon: Icons.show_chart,
          title: 'All selling activities',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildPreferencesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Preferences',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
        ),
        ProfileMenuItemWidget(
          icon: Icons.playlist_add_check,
          title: 'Following',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildAccountSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
        ),
        ProfileMenuItemWidget(
          icon: Icons.verified_user_outlined,
          title: 'Marketplace access',
          subtitle: 'You have full access.',
          onTap: () {},
        ),
        ProfileMenuItemWidget(
          icon: Icons.location_on_outlined,
          title: 'Location',
          onTap: () {},
        ),
        ProfileMenuItemWidget(
          icon: Icons.notifications_none,
          title: 'Notifications',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _buildMoreSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'More',
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
        ),
        ProfileMenuItemWidget(
          icon: Icons.settings_outlined,
          title: 'Settings',
          onTap: () {},
        ),
      ],
    );
  }
}
