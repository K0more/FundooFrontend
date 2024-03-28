// import 'package:http/http.dart' as http;

// class Provider {
//   final String _baseUrl = 'localhost:8080/userNotes/2';

//   Future<http.Response> get(String path) async {
//     return await http.get(Uri.parse('$_baseUrl/$path'));
//   }
// }
import 'dart:convert';

import 'package:http/http.dart' as http;

class Provider {
  final Uri _baseUrl =
      Uri.parse('http://localhost:8080/userNotes/2'); // Corrected URL
  final Uri _archivedUrl = Uri.parse('http://localhost:8080/archivedNotes/2');
  final Uri _trashUrl = Uri.parse('http://localhost:8080/trashedNotes/2');

  Future<List<Map<String, String>>> fetch() async {
    // Make an HTTP request to fetch the data
    final response = await http.get((_baseUrl));

    if (response.statusCode == 200) {
      // Parse the response body
      final List<Map<String, String>> noteData = []; // Initialize an empty list

      // Convert the JSON response to a list of maps
      final List<dynamic> jsonData = json.decode(response.body);

      // Iterate over the jsonData and add each item to noteData
      for (var item in jsonData) {
        noteData.add({
          'noteId': item['noteId'].toString(),
          'note': item['note'],
          'trash': item['trash'].toString(),
          'archive': item['archive'].toString(),
          'pinned': item['pinned'].toString(),
        });
      }

      return noteData; // Return the populated noteData
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<List<Map<String, String>>> fetchArchivedNotes() async {
    final response = await http.get(_archivedUrl);
    if (response.statusCode == 200) {
      // Parse the response body
      final List<Map<String, String>> archivedNoteData =
          []; // Initialize an empty list

      // Convert the JSON response to a list of maps
      final List<dynamic> jsonData = json.decode(response.body);

      // Iterate over the jsonData and add each item to noteData
      for (var item in jsonData) {
        archivedNoteData.add({
          'noteId': item['noteId'].toString(),
          'note': item['note'],
          'trash': item['trash'].toString(),
          'archive': item['archive'].toString(),
          'pinned': item['pinned'].toString(),
        });
      }

      return archivedNoteData; // Return the populated noteData
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<List<Map<String, String>>> fetchTrashedNotes() async {
    final response = await http.get(_trashUrl);
    if (response.statusCode == 200) {
      // Parse the response body
      final List<Map<String, String>> trashedNoteData =
          []; // Initialize an empty list

      // Convert the JSON response to a list of maps
      final List<dynamic> jsonData = json.decode(response.body);

      // Iterate over the jsonData and add each item to noteData
      for (var item in jsonData) {
        trashedNoteData.add({
          'noteId': item['noteId'].toString(),
          'note': item['note'],
          'trash': item['trash'].toString(),
          'archive': item['archive'].toString(),
          'pinned': item['pinned'].toString(),
        });
      }

      return trashedNoteData; // Return the populated noteData
    } else {
      throw Exception('Failed to fetch data');
    }
  }
  // Parse and return archived notes data
}
