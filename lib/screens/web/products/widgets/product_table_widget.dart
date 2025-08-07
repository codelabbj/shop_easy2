import 'package:flutter/material.dart';

import '../../../../constantes/const.dart';

class ProductTableWidget extends StatelessWidget {
  const ProductTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
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
            DataColumn(label: Text('Product ID')),
            DataColumn(label: Expanded(child: Text('Product Name'))),
            DataColumn(label: Text('Categories')),
            DataColumn(label: Text('Performance')),
            DataColumn(label: Expanded(child: Text('Conversion'))),
            DataColumn(label: Expanded(child: Text('Linked Marketing'))),
            DataColumn(label: Text('Price')),
            DataColumn(label: Expanded(child: Text('Sales'))),
            DataColumn(label: Expanded(child: Text('Stock Status'))),
            DataColumn(label: Text('Action')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(
                Transform.scale(
                  scale: 0.7,
                  child: Checkbox(
                    side: BorderSide(color: Colors.grey[500]!),
                    value: true,
                    onChanged: (bool? value) {
                      // Your code here, e.g.
                      print('Checkbox changed to $value');
                    },
                  ),
                ),
              ),
              DataCell(Text(
                '#280101',
                style: Theme.of(context).textTheme.labelSmall,
              )),
              DataCell(Text('Dell XPS 15', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('Laptop & PC', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('Excellent', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('75%', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('Google Ads', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('\$1,799', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('0', style: Theme.of(context).textTheme.labelSmall)),
              _buildStockStatus('Sold Out', context),
              _buildActionButtons(),
            ]),
            DataRow(cells: [
              DataCell(
                Transform.scale(
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
              DataCell(Text('#280102', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('Apple iPad (Gen 10)', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('Smartphone', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('Very Good', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('60%', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('Facebook Ads', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('\$449', style: Theme.of(context).textTheme.labelSmall)),
              DataCell(Text('2', style: Theme.of(context).textTheme.labelSmall)),
              _buildStockStatus('Low Stock', context),
              _buildActionButtons(),
            ]),
            // Ajoute d'autres lignes fictives ici
          ],
        ),
      ],
    );
  }

  // Widget helper pour le statut
  static DataCell _buildStockStatus(String status, BuildContext context) {
    Color color;
    switch (status) {
      case 'Sold Out':
        color = Colors.red;
        break;
      case 'Low Stock':
        color = Colors.orange;
        break;
      default:
        color = Colors.green;
    }
    return DataCell(Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: color.withValues(alpha: 0.2)),
      child: SizedBox(
          width: 94,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: color,
                ),
                SizedBox(width: 2),
                Text(status, style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          )),
    ));
  }

  // Widget helper pour les boutons d’action
  static DataCell _buildActionButtons() {
    return DataCell(
      Row(
        children: [
          IconButton(
            icon: Image.asset(
              "assets/images/editer.png",
              width: 15,
              height: 15,
            ),
            onPressed: () {
              // Action edit
            },
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/supprimer.png",
              width: 15,
              height: 15,
              color: Colors.red,
            ),
            onPressed: () {
              // Action delete
            },
          ),
        ],
      ),
    );
  }
}
