import 'package:flutter/material.dart';

class VillagerDetailScreen extends StatefulWidget {
  final villager;


  VillagerDetailScreen({this.villager});

  @override
  _VillagerDetailScreenState createState() => _VillagerDetailScreenState();
}

class _VillagerDetailScreenState extends State<VillagerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.villager['name']['name-EUen'].toString().toUpperCase()}',
        ),
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
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 250.0,
                    height: 250.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.cover, image: new NetworkImage('${widget.villager['image_uri']}')
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 30.0,
                    width: 300.0,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  Text(
                      '"${widget.villager['catch-phrase']}"',
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
                    height: 30.0,
                      width: 300.0,
                    child: Divider(
                    color: Colors.green,
                    ),
                  ),
                  Container(
                    width: 400.0,
                    height:60.0,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Text(
                      'Species: '+'${widget.villager['species']}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 400.0,
                    height:60.0,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Text(
                      'Gender: '+'${widget.villager['gender']}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 400.0,
                    height:60.0,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Text(
                      'Personality: '+'${widget.villager['personality']}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 400.0,
                    height:60.0,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Text(
                      'Birthday: '+'${widget.villager['birthday-string']}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
