import 'package:auvnet_ecommerce/features/authentication/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.id});
  factory UserModel.fromFireBase(User user) {
    return UserModel(email: user.email ?? '', id: user.uid);
  }
  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(email: jsonData['email'], id: jsonData['uId']);
  }
  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(email: user.email, id: user.id);
  }
  toMap() {
    return {'email': email, 'uId': id};
  }
}
