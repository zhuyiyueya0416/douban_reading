import 'package:douban_reading/models/user.dart';
import 'package:isar/isar.dart';

part 'user_model.g.dart';

@collection
class UserModel {
  Id id = Isar.autoIncrement;
  late String phone;
  late String displayName;
  late String password;

  User toMain(){
    return User(
      id: id,
      phone: phone,
      displayName: displayName,
      password: password,
    );
  }

  static UserModel fromDomain(User user) {
    return UserModel()
        ..id = user.id
        ..phone = user.phone
        ..displayName = user.displayName;
  }

}
