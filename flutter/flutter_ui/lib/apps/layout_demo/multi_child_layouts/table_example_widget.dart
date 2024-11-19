import 'package:flutter/material.dart';

class TableExampleWidget extends StatelessWidget {
  const TableExampleWidget({super.key});

  Map<int, TableColumnWidth> _tableColumnWidth() {
    return const <int, TableColumnWidth>{
      0: FixedColumnWidth(64),
      1: FlexColumnWidth(),
      2: FlexColumnWidth()
    };
  }

  TableRow _tableRow(int num, String name, String date) {
    return TableRow(children: <Widget>[
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Container(
          height: 32,
          width: 32,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(num.toString()),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Container(
          height: 32,
          width: 32,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text(name),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Container(
          height: 32,
          width: 32,
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(date),
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: _tableColumnWidth(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: List.generate(
          10, (index) => _tableRow(index + 1, "Joe", "01.0.1.1999")),
    );
  }
}
