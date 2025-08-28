import 'package:flutter/material.dart';

class WithdrawalTabWidget extends StatelessWidget {
  const WithdrawalTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.grey[300]),
        headingRowHeight: 40,
        columns: [
          DataColumn(label: Text('ID')),
          DataColumn(label: Expanded(child: Text('Amount'))),
          DataColumn(label: Text('Fee')),
          DataColumn(label: Expanded(child: Text('Status'))),
          DataColumn(label: Text('Created at')),
          DataColumn(label: Text('Operations')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("0.00", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(_buildOrderStatus("Completed", context)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
            _buildActionButtons(context),
          ]),
          DataRow(cells: [
            DataCell(Text('1', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('\$\9,174.00', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("0.00", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(_buildOrderStatus("pending", context)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
            _buildActionButtons(context),
          ]),
        ],
      ),
    );
  }

  Widget _buildOrderStatus(String Orderstatus, BuildContext context) {
    Color bgColor;
    Color textColor;

    switch (Orderstatus.toLowerCase()) {
      case 'completed':
        bgColor = Colors.green[100]!;
        textColor = Colors.green[800]!;
        break;
      case 'pending':
        bgColor = Colors.blue[100]!;
        textColor = Colors.blue[800]!;
        break;

      default:
        bgColor = Colors.grey[300]!;
        textColor = Colors.black87;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        Orderstatus,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  static DataCell _buildActionButtons(
    context,
  ) {
    return DataCell(
      Row(
        children: [
          IconButton(
            icon: Image.asset(
              "assets/images/vue.png",
              width: 15,
              height: 15,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
