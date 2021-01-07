part of 'services.dart';

class UserServices {
  static CollectionReference _usercollection =
      Firestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _usercollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'balance':user.balance,
      'selectedGenres':user.selectedGenres,
      'selectedLanguage':user.selectedLanguange,
      'profilePicture': user.profilePicture??""
    });
  }
}
