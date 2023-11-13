import 'package:dio/dio.dart';
import 'package:test_mge_reganreinaldo/models/photos.dart';

class PhotoProvider {
  late Dio _dio;
  String baseurl = 'https://jsonplaceholder.typicode.com';

  PhotoProvider(){
    _dio = Dio();
  }

  Future<List<Photos>> getAll() async{
    var response = await _dio.get(
      '$baseurl/photos',
      options: Options(
        headers: {
          "Content-Type": "application/json",
        }
      )
    );

    List<Photos> photos = [];

    List<dynamic> list = response.data;
    for (var photo in list) {
      Photos thePhoto = Photos.fromJson(photo);
      photos.add(thePhoto);
    }
    
    return photos;
  }
}