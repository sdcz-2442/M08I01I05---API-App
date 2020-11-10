import 'dart:convert';
import 'package:http/http.dart' as http;

class BugsRepo {
  Future getAllBugs() async {
    final baseUrl = 'https://acnhapi.com/v1/';
    final url = '${baseUrl}bugs';

    try {
      var response = await http.get(url);

      List bugs = [];

      json.decode(response.body).forEach((key, value) => bugs.add(value));
      bugs.sort((a, b) {
        return a['file-name']
            .toString()
            .toLowerCase()
            .compareTo(b['file-name'].toString().toLowerCase());
      });
      return bugs;
    } catch (error) {
      throw (error);
    }
  }
}
