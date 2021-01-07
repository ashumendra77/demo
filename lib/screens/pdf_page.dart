import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

class PdfViewPage extends StatelessWidget {
 final String pdfdata;
  PdfViewPage({@required this.pdfdata});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PDF.assets(
            pdfdata,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            placeHolder:
                Image.asset("assets/images/pdf.png", height: 200, width: 100),
          ),
        ],
      ),
    );
  }
}
