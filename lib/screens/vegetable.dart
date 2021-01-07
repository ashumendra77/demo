import 'package:demo/model/vegetable_model.dart';
import 'package:flutter/material.dart';

class VegtableScreen extends StatefulWidget {
  @override
  _VegtableScreenState createState() => _VegtableScreenState();
}

class _VegtableScreenState extends State<VegtableScreen> {
  TextEditingController _vegetableController = TextEditingController();
  List<VegetableModel> newDataList = List.from(vegetablemodel);

  onItemChanged(String value) {
    setState(() {
      newDataList = vegetablemodel
          .where((string) =>
              string.fname.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  List<String> vegitablelist = [
    'ladyfinger',
    'potato',
    'tomato',
    'brinjal',
    'pumpkin',
    'onion',
    'cabbaige',
    'corriender'
        'chilli',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(child: Text('Vegetable')),
              Expanded(flex: 2,
                  child: Container(
                height: 50,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[400]),
                child: TextFormField(
                  controller: _vegetableController,
                  onChanged: onItemChanged,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                      labelText: 'Search',
                      suffixIcon: Icon(Icons.search, color: Colors.white)),
                ),
              ))
            ],
          ),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 3),
          itemCount: newDataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ListTile(
                    // leading: Text('${index + 1}'),
                    title: Center(child: Text(newDataList[index].fname)),
                    tileColor: Colors.red[300]),
              ),
            );
          },
        ));
  }
}
