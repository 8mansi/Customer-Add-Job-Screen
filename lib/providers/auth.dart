import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

import '../models/user_model.dart';

class Auth with ChangeNotifier {
  var user = User(
    id: '63d287b56d6aff5058660885',
    // id: '',
    token: '',
    first_name: 'finson',
    last_name: 'Coutinho',
    email: 'NEW2302@gmail.com',
    mobile: '8990698880',
    profile_pic:
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600',
    // shortBio: 'Carpenter',
    shortBio: '',
    longBio:
        'I Am a plumber i love to do plumbing I Am a plumber i love to do plumbing I Am a plumber i love to do plumbing I Am a plumber i love to do plumbing I Am a plumber i love to do plumbing I Am a plumber i love to do plumbing I Am a plumber i love to do plumbing',
    gender: 'Male',
    city: 'Margao',
    state: 'Goa',
    dob: '15/3/2001',
  );

  bool get isAuth {
    return token != null;
  }

  String? get token {
    if (user.token != '') {
      return user.token;
    }
    return null;
  }

  User get userDetails {
    return user;
  }

  String? get userId {
    return user.id;
  }

  Future<void> login(phoneNumber) async {
    try {} catch (err) {}
  }

  Future<void> register(fullname, phoneNumber) async {
    try {} catch (err) {}
  }

  Future<void> logout() async {
    user.id = '';
    user.first_name = '';
    user.last_name = '';
    user.email = '';
    user.mobile = '';
    user.profile_pic = '';
    user.shortBio = '';
    user.longBio = '';
    user.gender = '';
    user.city = '';
    user.state = '';
    user.dob = '';
    notifyListeners();
  }

  Future<bool> updateUser(
      {required String id,
      required Map<String, String> user,
      File? image}) async {
    final url = Uri.parse('http://localhost:8000/api/v1/user/$id');

    // print(user);
    // print(image!.path);
    // print(image);
    final imageUploadRequest = http.MultipartRequest('PATCH', url);
    if (image != null) {
      final mimeTypeData =
          lookupMimeType(image.path, headerBytes: [0xFF, 0xD8])!.split('/');
      final file = await http.MultipartFile.fromPath('profile_pic', image.path,
          contentType: MediaType(mimeTypeData[0], mimeTypeData[1]));
      imageUploadRequest.files.add(file);
    }

    imageUploadRequest.fields['first_name'] = user['first_name']!;
    imageUploadRequest.fields['last_name'] = user['last_name']!;
    imageUploadRequest.fields['email'] = user['email']!;
    imageUploadRequest.fields['mobile'] = user['mobile']!;
    imageUploadRequest.fields['shortBio'] =
        (user['shortBio'] == 'Select Occupation' ? '' : user['shortBio'])!;
    imageUploadRequest.fields['longBio'] = user['longBio']!;
    imageUploadRequest.fields['gender'] =
        (user['gender'] == 'Select Gender' ? '' : user['gender'])!;
    imageUploadRequest.fields['city'] =
        (user['city'] == 'Select City' ? '' : user['city'])!;
    imageUploadRequest.fields['state'] =
        (user['state'] == 'Select State' ? '' : user['state'])!;
    imageUploadRequest.fields['dob'] = user['dob']!;

    try {
      print('try');
      final streamedResponse = await imageUploadRequest.send();
      final response = await http.Response.fromStream(streamedResponse);
      print(response.body);

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }

      notifyListeners();
    } catch (error) {
      print(error);
      return false;
      // throw error;
    }
  }
}
