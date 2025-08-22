import 'package:flutter/material.dart';

class CouponTabWidget extends StatelessWidget {
  const CouponTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.grey[300]),
        headingRowHeight: 40,
        columns: [
          DataColumn(
            label: Expanded(
              child: Transform.scale(
                scale: 0.7,
                child: Checkbox(
                  side: BorderSide(color: Colors.grey[500]!),
                  value: false,
                  onChanged: (bool? value) {
                    // Your code here, e.g.
                    print('Checkbox changed to $value');
                  },
                ),
              ),
            ),
          ),
          DataColumn(label: Text('ID')),
          DataColumn(label: Expanded(child: Text('Details'))),
          DataColumn(label: Text('Used')),
          DataColumn(label: Text('Start Date')),
          DataColumn(label: Expanded(child: Text('End Date'))),
          DataColumn(label: Expanded(child: Text('Operations'))),
          DataColumn(label: Text('Action')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Transform.scale(
              scale: 0.7,
              child: Checkbox(
                side: BorderSide(color: Colors.grey[500]!),
                value: true,
                onChanged: (bool? value) {
                  print('Checkbox changed to $value');
                },
              ),
            )),
            DataCell(Text('ORD001', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('iPhone 13 Pro', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Yes', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-01', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-01', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('MTN Mobile Money', style: Theme.of(context).textTheme.labelSmall)),
            _buildActionButtons(context)
          ]),
          DataRow(cells: [
            DataCell(Transform.scale(
              scale: 0.7,
              child: Checkbox(
                side: BorderSide(color: Colors.grey[500]!),
                value: false,
                onChanged: (bool? value) {
                  print('Checkbox changed to $value');
                },
              ),
            )),
            DataCell(Text('ORD002', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Samsung Galaxy A54', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('No', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-03', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-03', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Orange Money', style: Theme.of(context).textTheme.labelSmall)),
            _buildActionButtons(context)
          ]),
          DataRow(cells: [
            DataCell(Transform.scale(
              scale: 0.7,
              child: Checkbox(
                side: BorderSide(color: Colors.grey[500]!),
                value: true,
                onChanged: (bool? value) {
                  print('Checkbox changed to $value');
                },
              ),
            )),
            DataCell(Text('ORD003', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('MacBook Pro M2', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Yes', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-05', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-05', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Bank Transfer', style: Theme.of(context).textTheme.labelSmall)),
            _buildActionButtons(context)
          ]),
          DataRow(cells: [
            DataCell(Transform.scale(
              scale: 0.7,
              child: Checkbox(
                side: BorderSide(color: Colors.grey[500]!),
                value: false,
                onChanged: (bool? value) {
                  print('Checkbox changed to $value');
                },
              ),
            )),
            DataCell(Text('ORD004', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Redmi Note 12', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Yes', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Cash on Delivery', style: Theme.of(context).textTheme.labelSmall)),
            _buildActionButtons(
              context,
            )
          ]),
        ],
      ),
    );
  }

  static DataCell _buildActionButtons(
    context,
  ) {
    return DataCell(
      IconButton(
        icon: Row(
          children: [
            Image.asset(
              "assets/images/supprimer.png",
              width: 15,
              height: 15,
              color: Colors.red,
            ),
            SizedBox(width: 5),
            Text(
              "Delete",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.red),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
