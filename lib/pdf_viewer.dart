import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPdfViewer extends StatefulWidget {
  const MyPdfViewer({super.key});

  @override
  State<MyPdfViewer> createState() => _MyPdfViewerState();
}

class _MyPdfViewerState extends State<MyPdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("ሪያዱ አስ ሳሊሂን ቅጽ 1"),
        ),
        body:
          // link fron internet
            SfPdfViewer.network(
          "https://darsenizaami.files.wordpress.com/2014/12/riaz-ul-saliheen.pdf",
        )
     //    SfPdfViewer.asset("asset/am-the-description-of-the-prophet-prayer.pdf"),
        );
  }
}
