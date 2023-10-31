import 'dart:developer';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:alsagr_app/components/drawer.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:http/http.dart' as http;

class Planclub extends StatefulWidget {
  const Planclub({Key? key}) : super(key: key);

  @override
  State<Planclub> createState() => _PlanclubState();
}

class _PlanclubState extends State<Planclub> {
  String urlPDFPath = "";
  bool exists = true;
  int _totalPages = 0;
  int _currentPage = 0;
  bool pdfReady = false;
  late PDFViewController _pdfViewController;
  bool loaded = false;
  Future<File> getFileFromUrl(String url, {name}) async {
    var fileName = 'testonline';
    if (name != null) {
      fileName = name;
    }
    try {
      var data = await http.get(Uri.parse(url));
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$fileName.pdf");
      log(dir.path);
      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }

  @override
  void initState() {
    getFileFromUrl(
            "https://firebasestorage.googleapis.com/v0/b/alsaqar-566d3.appspot.com/o/__%D8%A7%D8%B3%D8%AA%D8%B1%D8%A7%D8%AA%D9%8A%D8%AC%D9%8A%D8%A9%20%D8%A7%D9%84%D9%86%D8%A7%D8%AF%D9%8A%20%D8%A7%D9%84%D8%B1%D8%B3%D9%85%D9%8A%D8%A9%20(1).pdf?alt=media&token=2eb2af27-f55a-4cc8-a37c-346f9fabc0c9&_gl=1*umcdke*_ga*MTA5MjI0NDU4LjE2Nzk5MDg4MzY.*_ga_CW55HF8NVT*MTY5NzA5OTc5Ny4xNTcuMS4xNjk3MDk5ODI1LjMyLjAuMA..")
        .then(
      (value) => {
        setState(() {
          urlPDFPath = value.path;
          loaded = true;
          exists = true;
        })
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (loaded) {
      return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text(' هيكل الخطة الاستراتيجية'),
          actions: [
            ClipOval(
              child: Image.asset('assets/Alsaaqerclub.jpg'),
            )
          ],
          backgroundColor: const Color.fromARGB(255, 86, 45, 93),
          centerTitle: true,
          toolbarHeight: 60,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
        ),
        body: PDFView(
          filePath: urlPDFPath,
          autoSpacing: true,
          enableSwipe: true,
          pageSnap: true,
          defaultPage: _currentPage,
          swipeHorizontal: true,
          onError: (e) {
            BotToast.showText(text: e);
          },
          onRender: (pages) {
            setState(() {
              _totalPages = pages!;
              pdfReady = true;
            });
          },
          onViewCreated: (PDFViewController vc) {
            setState(() {
              _pdfViewController = vc;
            });
          },
          onPageChanged: (int? page, int? total) {
            setState(() {
              _currentPage = page!;
            });
          },
          onPageError: (page, e) {},
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.chevron_left),
              iconSize: 50,
              color: Colors.black,
              onPressed: () {
                setState(() {
                  if (_currentPage > 0) {
                    _currentPage--;
                    _pdfViewController.setPage(_currentPage);
                  }
                });
              },
            ),
            Text(
              "${_currentPage + 1}/$_totalPages",
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right),
              iconSize: 50,
              color: Colors.black,
              onPressed: () {
                setState(() {
                  if (_currentPage < _totalPages - 1) {
                    _currentPage++;
                    _pdfViewController.setPage(_currentPage);
                  }
                });
              },
            ),
          ],
        ),
      );
    } else {
      if (exists) {
        return const Material(
          child: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      } else {
        //Replace Error UI
        return const Material(
          child: Center(
            child: Text(
              "PDF Not Available",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      }
    }
  }
}
