import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SearchMobileScreen extends StatefulWidget {
  const SearchMobileScreen({Key? key}) : super(key: key);

  @override
  State<SearchMobileScreen> createState() => _SearchMobileScreenState();
}

class _SearchMobileScreenState extends State<SearchMobileScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Text(
          'What do you want to buy?'.tr(),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          indicatorWeight: 2,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey[600],
          labelStyle: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w500),
          tabs: [
            Tab(text: 'Recent'.tr()),
            Tab(text: 'Saved searches'.tr()),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildRecentTab(),
          _buildSavedSearchesTab(),
        ],
      ),
    );
  }

  Widget _buildRecentTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top categories'.tr(),
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
          ),
          const SizedBox(height: 16),
          _buildTopCategories(),
          const SizedBox(height: 32),
          Text(
            'All categories'.tr(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          _buildAllCategories(),
        ],
      ),
    );
  }

  Widget _buildSavedSearchesTab() {
    return Center(
      child: Text(
        'No saved searches yet'.tr(),
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildTopCategories() {
    final topCategories = [
      {'icon': Icons.directions_car, 'title': 'Vehicles'.tr()},
      {'icon': Icons.home, 'title': 'Rentals'.tr()},
      {'icon': Icons.checkroom, 'title': 'Womenswear'.tr()},
      {'icon': Icons.face, 'title': 'Menswear'.tr()},
      {'icon': Icons.chair, 'title': 'Furniture'.tr()},
      {'icon': Icons.phone_android, 'title': 'Electronics'.tr()},
    ];

    return Column(
      children: topCategories
          .map((category) => _buildCategoryItem(
                category['icon'] as IconData,
                category['title'] as String,
              ))
          .toList(),
    );
  }

  Widget _buildAllCategories() {
    final allCategories = [
      {'icon': Icons.museum, 'title': 'Antiques & Collectibles'.tr()},
      {'icon': Icons.palette, 'title': 'Arts & Crafts'.tr()},
      {'icon': Icons.build, 'title': 'Auto Parts'.tr()},
      {'icon': Icons.child_care, 'title': 'Baby'.tr()},
    ];

    return Column(
      children: allCategories
          .map((category) => _buildCategoryItem(
                category['icon'] as IconData,
                category['title'] as String,
              ))
          .toList(),
    );
  }

  Widget _buildCategoryItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            // Action lors du tap sur une catégorie
            print('Tapped on $title');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    color: Colors.black87,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey[400],
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
