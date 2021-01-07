import 'package:demo/model/book_model.dart';
import 'package:demo/screens/pdf_page.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  TextEditingController _bookController = TextEditingController();
  List<BookModel> newDataList = List.from(bookmodel);

  onItemChanged(String value) {
    setState(() {
      newDataList = bookmodel
          .where((string) =>
              string.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(child: Text('Books')),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[400]),
                    child: TextFormField(
                      controller: _bookController,
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
        body: ListView.builder(
          itemCount: newDataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              height: 150,
                              width: 100,
                              image: AssetImage(newDataList[index].imageUrl),
                              fit: BoxFit.fill)),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(newDataList[index].name,
                              textAlign: TextAlign.center),
                          MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PdfViewPage(
                                            pdfdata: newDataList[index].pdf,
                                          )),
                                );
                              },
                              child: Text('View Pdf'),
                              color: Colors.orange[300])
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
