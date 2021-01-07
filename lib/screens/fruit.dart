import 'package:demo/model/fruit_model.dart';
import 'package:flutter/material.dart';

class FruitScreen extends StatefulWidget {
  @override
  _FruitScreenState createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  TextEditingController _fruitController = TextEditingController();
  List<FruitModel> newDataList = List.from(fruitModel);

  onItemChanged(String value) {
    setState(() {
      newDataList = fruitModel
          .where((string) =>
              string.fname.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(child: Text('Fruit')),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[400]),
                    child: TextFormField(
                        controller: _fruitController,
                        onChanged: onItemChanged,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            labelText: 'Search',
                            suffixIcon:
                                Icon(Icons.search, color: Colors.white))),
                  ))
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: newDataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ListTile(
                    leading: Text('${index + 1}'),
                    title: Text(newDataList[index].fname),
                    tileColor: Colors.blue[300]),
              ),
            );
          },
        ));
  }
}
