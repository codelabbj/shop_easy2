import 'package:flutter/material.dart';

class StoreOverviewCard extends StatelessWidget {
  const StoreOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --------- STORE PERFORMANCE ---------
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Row(
                  children: [
                    Icon(Icons.store, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "Store Performance",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Divider(height: 20),

                // Stats Grid
                Wrap(
                  spacing: 40,
                  runSpacing: 12,
                  children: [
                    _buildStatTile(
                      context,
                      Icons.shopping_cart,
                      "CONVERSION RATE",
                      "61.5%",
                    ),
                    _buildStatTile(context, Icons.receipt_long, "AVG. ORDER VALUE", "\$1,262.38"),
                    _buildStatTile(context, Icons.local_shipping, "FULFILLMENT RATE", "100%"),
                    _buildStatTile(context, Icons.visibility, "STORE VISIBILITY", "", badge: "Active", badgeColor: Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: 16),

        // --------- QUICK ACTIONS ---------
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Row(
                  children: [
                    Icon(Icons.flash_on, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "Quick Actions",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Divider(height: 20),

                // Buttons Grid
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _actionButton(context, "Add Product", Icons.add, borderColor: Colors.blue),
                    _actionButton(context, "Create Discount", Icons.percent, borderColor: Colors.lightBlue),
                    _actionButton(context, "Store Settings", Icons.settings, borderColor: Colors.orange),
                    _actionButton(context, "Withdrawal", Icons.attach_money, borderColor: Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatTile(context, IconData icon, String label, String value, {String? badge, Color? badgeColor}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 20, color: Colors.blueGrey),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 11, color: Colors.blueGrey)),
            badge != null
                ? Container(
                    margin: EdgeInsets.only(top: 4),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: badgeColor ?? Colors.green,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      badge,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white, fontSize: 12),
                    ),
                  )
                : Text(
                    value,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
          ],
        ),
      ],
    );
  }

  Widget _actionButton(context, String text, IconData icon, {required Color borderColor}) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 16, color: borderColor),
      label: Text(text, style: Theme.of(context).textTheme.labelSmall!.copyWith(color: borderColor)),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),
    );
  }
}
