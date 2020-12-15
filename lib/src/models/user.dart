class User {
  final String _userId;
  String _username;
  final String _email;
  String _accessToken;
  String _refreshToken;
  String profilePicture;

  User(
    this._userId,
    this._username,
    this._email,
    this._accessToken,
    this._refreshToken,
    {
      this.profilePicture = 'assets/images/profile.jpg',
    }
  );

  String get id => this._userId;
  String get username => this._username;
  String get email => this._email;
  String get token => this._accessToken;
  String get refreshToken => this._refreshToken;

  void updateToken(String accessToken, String refreshToken) {
    this._accessToken = accessToken;
    this._refreshToken = refreshToken;
  }

  void updateUsername(String username) {
    this._username = username;
  }
}