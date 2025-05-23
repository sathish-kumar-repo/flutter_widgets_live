import 'package:flutter/material.dart';

class DataColumnWidget extends StatefulWidget {
  const DataColumnWidget({super.key});

  @override
  State<DataColumnWidget> createState() => _DataColumnWidgetState();
}

class _DataColumnWidgetState extends State<DataColumnWidget> {
  TextStyle titles = const TextStyle(
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DataColumn Widget"),
      ),
      body: DataTable(
        columns: <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: titles,
            ),
          ),
          DataColumn(
            label: Text(
              'Age',
              style: titles,
            ),
          ),
          DataColumn(
            label: Text(
              'Color',
              style: titles,
            ),
          ),
        ],
        rows: const [
          DataRow(
            cells: [
              DataCell(Text('Max')),
              DataCell(Text('21')),
              DataCell(Text('Red')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('Jane')),
              DataCell(Text('25')),
              DataCell(Text('Blue')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Yellow')),
            ],
          ),
        ],
      ),
    );
  }
}
