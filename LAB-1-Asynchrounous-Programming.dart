import 'dart:math';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  // Ex1
  final result = await wait();
  print(result);

  // Ex2
  await downloadFile(
      "https://file-examples.com/wp-content/storage/2017/02/file-sample_100kB.doc",
      "file.doc");

  // Ex3

  List<String> fetchedResult = await fetchDataFromDB();
  print(fetchedResult);
}

Future<String> wait() async {
  const seconds = Duration(seconds: 3);
  List<String> quotes = ["quote1", "quote2", "quote3"];
  await Future.delayed(seconds);
  return quotes[Random().nextInt(quotes.length)];
}

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
  } else {
    print('download failed');
  }
}

// Ex3
Future<List<String>> fetchDataFromDB() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> DBdata = ['Data1', 'Data2', 'Data3'];
  return DBdata;
}
