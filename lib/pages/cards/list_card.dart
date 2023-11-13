import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_mge_reganreinaldo/pages/dialogs/show_photo_dialog.dart';

class ListCard extends StatelessWidget {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const ListCard({
    super.key,
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context, 
          builder: (context) {
            return ShowPhotoDialog(
              title: title, 
              url: url
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 5),
        child: Row(
          children: [
            const SizedBox(width: 10,),
            CachedNetworkImage(
              imageUrl: thumbnailUrl,
              progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 10,),
            SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    softWrap: true,
                  ),
                  Text(
                    'URL:',
                    softWrap: true,
                  ),
                  Text(
                    url,
                    softWrap: true,
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                
              }, 
              icon: const Icon(Icons.delete)
            ),
            const SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}