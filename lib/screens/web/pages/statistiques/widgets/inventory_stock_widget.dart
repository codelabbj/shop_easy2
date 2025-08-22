import 'package:flutter/material.dart';

class InventoryStatusCard extends StatelessWidget {
  const InventoryStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Row(
            children: [
              Icon(Icons.inventory_2_outlined, color: Colors.black87),
              SizedBox(width: 8),
              Text(
                "Inventory Status",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          Divider(height: 24),

          // Stock Rows
          _stockRow(
            context,
            icon: Icons.check,
            iconColor: Colors.green,
            quantity: 13,
            label: "In Stock",
            buttonColor: Colors.green,
          ),
          SizedBox(height: 12),
          _stockRow(
            context,
            icon: Icons.warning_amber_rounded,
            iconColor: Colors.orange,
            quantity: 0,
            label: "Low Stock",
            buttonColor: Colors.orange,
          ),
          SizedBox(height: 12),
          _stockRow(
            context,
            icon: Icons.close,
            iconColor: Colors.red,
            quantity: 0,
            label: "Out of Stock",
            buttonColor: Colors.red,
          ),

          Divider(height: 32),

          // Add new product
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Icon(Icons.add, color: Colors.blue),
                SizedBox(width: 4),
                Text(
                  "Add New Product",
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.blue, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _stockRow(
    context, {
    required IconData icon,
    required Color iconColor,
    required int quantity,
    required String label,
    required Color buttonColor,
  }) {
    return Row(
      children: [
        // Icon
        Container(
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.all(6),
          child: Icon(icon, size: 20, color: iconColor),
        ),
        SizedBox(width: 12),

        // Quantity and Label
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$quantity",
                style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(label, style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey[600], fontSize: 13)),
            ],
          ),
        ),

        // View Button
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: buttonColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            side: BorderSide(color: buttonColor),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            minimumSize: Size(0, 0),
          ),
          child: Text("View", style: TextStyle(fontSize: 13)),
        ),
      ],
    );
  }
}
