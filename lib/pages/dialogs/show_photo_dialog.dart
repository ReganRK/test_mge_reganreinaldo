import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ShowPhotoDialog extends StatelessWidget {
  final String title;
  final String url;

  const ShowPhotoDialog({
    super.key,
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        child: Column(
          children: [
            Text(
              title
            ),
            CachedNetworkImage(
              imageUrl: url,
              progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    
                  }, 
                  child: Text(
                    'OK'
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}