import 'package:flutter/material.dart';

class BugDetailScreen extends StatefulWidget {
  final bug;

  BugDetailScreen({this.bug});

  @override
  _BugDetailScreenState createState() => _BugDetailScreenState();
}

class _BugDetailScreenState extends State<BugDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.bug['name']['name-EUen'].toString().toUpperCase()}'),
        brightness: Brightness.light,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://acnhapi.com/v1/images/bugs/${widget.bug['id']}',
                  ),
                  SizedBox(
                    width: 400.0,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '"${widget.bug['catch-phrase']}"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.green,
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    //height: 30.0,
                    width: 400.0,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  Image.network(
                    'https://acnhapi.com/v1/icons/bugs/${widget.bug['id']}',
                  ),
                  SizedBox(
                    width: 400.0,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                          child: Text(
                        '\"${widget.bug['museum-phrase']}\"',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        )
                      ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
