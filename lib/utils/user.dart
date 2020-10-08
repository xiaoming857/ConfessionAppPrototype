class User {
  final String _userId;
  String _email;
  String _password;
  String _username;
  String _profilePicture;

  User(
    this._userId,
    this._email,
    this._password,
    this._username,
    this._profilePicture,
  );

  String get username => _username;

  String get password => _password;

  String get email => _email;

  String get userId => _userId;

  String get profilePicture => _profilePicture;
}