import 'package:flutter/material.dart';
import 'package:test_mge_reganreinaldo/models/photos.dart';
import 'package:test_mge_reganreinaldo/pages/cards/list_card.dart';
import 'package:test_mge_reganreinaldo/providers/photo_provider.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  
  List<Photos> listPhotos = [];

  bool isLoading = false;

  Future<void> refreshData() async{
    setState(() {
      isLoading = true;
    });

    listPhotos = await PhotoProvider().getAll();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        onPressed: () {
          refreshData();
        },
        child: Icon(
          Icons.download_sharp,
          color: Colors.white,
        ),
      ),
      body: isLoading ? 
        Center(
          child: CircularProgressIndicator(),
        ) :
        Container(
          width: double.infinity,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ListCard(
                albumId: listPhotos[index].albumId, 
                id: listPhotos[index].id, 
                title: listPhotos[index].title, 
                url: listPhotos[index].url, 
                thumbnailUrl: listPhotos[index].thumbnailUrl
              );
            }, 
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            }, 
            itemCount: listPhotos.length
          ),
        ),
    );
  }
}