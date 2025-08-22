import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class InventoryPieChart extends StatelessWidget {
  final int inStock;
  final int lowStock;
  final int outOfStock;

  const InventoryPieChart({
    super.key,
    required this.inStock,
    required this.lowStock,
    required this.outOfStock,
  });

  @override
  Widget build(BuildContext context) {
    final int total = inStock + lowStock + outOfStock;

    if (total == 0) {
      return const Center(child: Text("No inventory data."));
    }

    double dynamicRadius(int value) {
      const double baseRadius = 40;
      return baseRadius + (value / total) * 20;
    }

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)]),
      child: Column(
        children: [
          Text("Earnings", style: Theme.of(context).textTheme.labelSmall!),
          Text("Earnings in last 30 last days", style: Theme.of(context).textTheme.displaySmall!),
          Divider(
            color: Colors.grey[300],
          ),

          SizedBox(
            height: 200,
            child: PieChart(
              PieChartData(
                sectionsSpace: 3,
                centerSpaceRadius: 40,
                sections: [
                  PieChartSectionData(
                    color: Colors.green,
                    value: inStock.toDouble(),
                    title: '$inStock',
                    radius: dynamicRadius(inStock),
                    titleStyle: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14, color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: Colors.orange,
                    value: lowStock.toDouble(),
                    title: '$lowStock',
                    radius: dynamicRadius(lowStock),
                    titleStyle: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14, color: Colors.white),
                  ),
                  PieChartSectionData(
                    color: Colors.red,
                    value: outOfStock.toDouble(),
                    title: '$outOfStock',
                    radius: dynamicRadius(outOfStock),
                    titleStyle: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Légende
          Wrap(
            spacing: 20,
            children: [
              _buildLegendItem(context, color: Colors.green, label: 'In Stock'),
              _buildLegendItem(context, color: Colors.orange, label: 'Low Stock'),
              _buildLegendItem(context, color: Colors.red, label: 'Out of Stock'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(context, {required Color color, required String label}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 12, height: 12, color: color),
        const SizedBox(width: 6),
        Text(label, style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14)),
      ],
    );
  }
}
