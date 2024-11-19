import 'package:flutter/material.dart';

class QuoteScreen extends StatelessWidget {
  final String quote;
  final String author;

  const QuoteScreen({Key? key, required this.quote, required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Column(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Text(quote, style: const TextStyle(fontSize: 20)),
                    Align(child: Text("- $author",), alignment: Alignment.bottomRight,),
                  ]),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.blue[400]),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        "Go Back",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
