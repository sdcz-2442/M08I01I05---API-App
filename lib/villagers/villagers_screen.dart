import 'package:flutter/material.dart';
import 'package:acnh_app_api/villagers/villager_detail_screen.dart';
import 'villagers_repo.dart';
import 'package:loading_animations/loading_animations.dart';

class VillagersScreen extends StatefulWidget {
  @override
  _VillagersScreenState createState() => _VillagersScreenState();
}

class _VillagersScreenState extends State<VillagersScreen> {
  List villagers;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none &&
                snapshot.hasData == null) {
              return Container();
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: LoadingBouncingGrid.square(
                  size: 80,
                  backgroundColor: Colors.green,
                ),
              );
            }

            if (snapshot.connectionState == ConnectionState.done &&
                !snapshot.hasData) {
              return Text('No data');
            }
            return Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 55),
                    itemCount: snapshot.data.length,
                    itemBuilder: (ctx, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        elevation: 5,
                        child: ListTile(
                          leading: Image.network(
                            'https://acnhapi.com/v1/icons/villagers/${snapshot
                                .data[index]['id']}',
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      VillagerDetailScreen(
                                        villager: snapshot.data[index],
                                      ),
                              ),
                            );
                          },
                          title: Text(
                            '${snapshot.data[index]['name']['name-EUen']
                                .toString()
                                .toUpperCase()}',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 22.0,
                            )
                          ),
                          subtitle: Text(
                              '${snapshot.data[index]['saying']}',
                          style: TextStyle(
                            fontStyle: FontStyle.italic
                          ),),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
          future: VillagersRepo().getAllVillagers(),
          initialData: [],
        ),
      ),
    );
  }
}
