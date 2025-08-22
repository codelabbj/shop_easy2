import 'package:flutter/material.dart';

class RevenuesTabWidget extends StatelessWidget {
  const RevenuesTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.grey[300]),
        headingRowHeight: 40,
        columns: [
          DataColumn(label: Text('ID')),
          DataColumn(label: Expanded(child: Text('Description'))),
          DataColumn(label: Text('Fee')),
          DataColumn(label: Text('Sub amount')),
          DataColumn(label: Expanded(child: Text('Amount'))),
          DataColumn(label: Expanded(child: Text('Type'))),
          DataColumn(label: Text('Created at')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('ORD004', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('#SF-10000049', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("0.00", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Add Amount', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
          ]),
          DataRow(cells: [
            DataCell(Text('ORD004', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('#SF-10000049', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("0.00", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Add Amount', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
          ]),
          DataRow(cells: [
            DataCell(Text('ORD004', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('#SF-10000049', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("0.00", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Add Amount', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
          ]),
          DataRow(cells: [
            DataCell(Text('ORD004', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('#SF-10000049', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("0.00", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Add Amount', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
          ]),
        ],
      ),
    );
  }
}
