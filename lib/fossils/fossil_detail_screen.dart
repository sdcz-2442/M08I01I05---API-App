import 'package:flutter/material.dart';

class FossilDetailScreen extends StatefulWidget {
  final fossil;

  FossilDetailScreen({this.fossil});

  @override
  _FossilDetailScreenState createState() => _FossilDetailScreenState();
}

class _FossilDetailScreenState extends State<FossilDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.fossil['name']['name-EUen'].toString().toUpperCase()}',
        ),
        backgroundColor: Colors.green,
        brightness: Brightness.light,
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
                    'https://acnhapi.com/v1/images/fossils/${widget.fossil['file-name']}',
                  ),
                  SizedBox(
                    width: 400.0,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    '"${widget.fossil['museum-phrase']}"',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
