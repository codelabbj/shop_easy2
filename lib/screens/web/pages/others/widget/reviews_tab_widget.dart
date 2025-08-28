import 'package:flutter/material.dart';

import '../../../../../constantes/const.dart';

class ReviewsTabWidget extends StatelessWidget {
  const ReviewsTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
        headingRowColor: MaterialStateProperty.all(Colors.grey[300]),
        headingRowHeight: 40,
        columns: [
          DataColumn(label: Expanded(child: Text('ID'))),
          DataColumn(label: Expanded(child: Text('Product'))),
          DataColumn(label: Text('User')),
          DataColumn(label: Expanded(child: Text('Star'))),
          DataColumn(label: Text('Comment')),
          DataColumn(label: Expanded(child: Text('Images'))),
          DataColumn(label: Text('Created at')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('368', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Samsung QN85A Neo QLED 4K Smart TV', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("Elliott Durgan", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('4', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(SizedBox(
              width: Const.screenWidth(context) * 0.3,
              child: Text('We have received brilliant service support and will be expanding the features with the developer. Nice product!',
                  style: Theme.of(context).textTheme.labelSmall),
            )),
            DataCell(Image.asset(
              "assets/images/winter_hooby.webp",
              width: 40,
              height: 40,
            )),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
          ]),
          DataRow(cells: [
            DataCell(Text('368', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('Samsung QN85A Neo QLED 4K Smart TV', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text("Elliott Durgan", style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('4', style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Text('We have received brilliant service support and will be expanding the features with the developer. Nice product!',
                style: Theme.of(context).textTheme.labelSmall)),
            DataCell(Image.asset(
              "assets/images/winter_hooby.webp",
              width: 40,
              height: 40,
            )),
            DataCell(Text('2025-08-06', style: Theme.of(context).textTheme.labelSmall)),
          ]),
        ],
      ),
    );
  }
}
