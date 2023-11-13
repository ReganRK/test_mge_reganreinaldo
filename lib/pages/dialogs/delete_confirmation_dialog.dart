import 'package:flutter/material.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final String title;

  const DeleteConfirmationDialog({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 100,
        child: Column(
          children: [
            Text(
              'Apakah photo $title ingin dihapus?'
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  }, 
                  child: Text(
                    'Iya'
                  )
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  }, 
                  child: Text(
                    'Tidak'
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