class User {
  final int id;
  final String phone;
  final String displayName;
  final String password;
  final String avatar;

  const User({
    required this.id,
    required this.phone,
    required this.displayName,
    required this.password,
    this.avatar = 'assets/imgs/profile.png',
  });
}