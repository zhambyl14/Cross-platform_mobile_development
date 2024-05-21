class Users {
  int? id;
  String usrName;
  String usrPassword;

  Users({this.id, required this.usrName, required this.usrPassword});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'username': usrName,
      'password': usrPassword,
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  Users.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        usrName = map['username'],
        usrPassword = map['password'];
}
