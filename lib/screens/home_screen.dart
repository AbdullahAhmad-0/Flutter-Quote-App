import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quotesapp/screens/quote_screen.dart';
import 'package:http/http.dart' as http;

// Main Screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String loading = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          height: 350,
          child: Column(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue[400]),
                  ),
                  onPressed: () async {
                    setState(() {
                      loading = "Wait a moment...";
                    });
                      var url = Uri.parse('https://zenquotes.io/api/random');
                      var response = await http.get(url).whenComplete(() => setState(() {loading = "";}));
                      var object = jsonDecode(response.body);

                      String quote = object[0]['q'];
                      String author = object[0]['a'];

                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuoteScreen(author: author, quote: quote)));
                  },
                  child: const Text(
                    "Get Quote",
                    style: TextStyle(color: Colors.white),
                  )),
              Text(loading),
            ],
          ),
        ),
      ),
    ));
  }
}
