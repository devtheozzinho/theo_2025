class User {
  String username;
  String password;

  User(this.username, this.password);
}

List<User> users = [User('admin', '123')];

bool loguin(String username, String password) {
  for (var user in users) {
    if (user.username == username && user.password == password) {
      return true;
    }
  }
  return false;
}
