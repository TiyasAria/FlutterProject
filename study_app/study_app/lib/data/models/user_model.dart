import 'package:equatable/equatable.dart';

class UserModel extends Equatable{
  final int id;
  final String firstName;
  final String email;
  final String lastName;
  final String avatar;

  UserModel({
     required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
});

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      id : json['id'],
      email : json['email'],
      firstName : json['first_name'],
      lastName : json['last_name'],
      avatar : json['avatar'],

    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id' : id,
      'email' : email,
      'first_name' : firstName,
      'last_name' : lastName,
      'avatar' : avatar
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, firstName, lastName, avatar];
}