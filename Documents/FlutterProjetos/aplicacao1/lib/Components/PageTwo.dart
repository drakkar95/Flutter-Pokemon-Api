import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String? title;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          children: [Text('Pagina 2 krl')],
        ),
      ),
    );
  }
}
