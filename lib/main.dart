import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void fetchBusinessList() async {
    var response = await http.get(
      'https://api.yelp.com/v3/businesses/search' +
          "?&latitude=49.2820&longitude=-123.1171",
      headers: {
        HttpHeaders.authorizationHeader:
            "Bearer FnypsPGY5osnYRxk5O3LhpLrXwtop7xsTCKfwOrYiG95onyjO5jeqsCshYSJhPbRnD4Y-lyW1C9U7tq4Gxd3eJwgLgdd25GotyW4HdRZzc438n76ThzKz7s0mmhUXnYx"
      },
    );
    print(json.decode(response.body));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    fetchBusinessList();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Center(
        child: Text('Yelp Businesses'),
      ),
    );
  }
}
