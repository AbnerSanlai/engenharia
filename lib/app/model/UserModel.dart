class UserModel {
  UserModel({
    required this.jwt,
    required this.user,
  });
  late final String jwt;
  late final User user;

  UserModel.fromJson(Map<String, dynamic> json) {
    jwt = json['jwt'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['jwt'] = jwt;
    _data['user'] = user.toJson();
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.confirmed,
    required this.blocked,
    required this.photo,
  });
  late final int id;
  late final String username;
  late final String email;
  late final bool confirmed;
  late final bool blocked;
  late final Photo photo;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    confirmed = json['confirmed'];
    blocked = json['blocked'];
    photo = Photo.fromJson(json['photo']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['username'] = username;
    _data['email'] = email;
    _data['confirmed'] = confirmed;
    _data['blocked'] = blocked;
    _data['photo'] = photo.toJson();
    return _data;
  }
}

class Photo {
  Photo({
    required this.id,
    required this.formats,
  });
  late final int id;
  late final Formats formats;

  Photo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    formats = Formats.fromJson(json['formats']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['formats'] = formats.toJson();
    return _data;
  }
}

class Formats {
  Formats({
    required this.small,
  });
  late final Small small;

  Formats.fromJson(Map<String, dynamic> json) {
    small = Small.fromJson(json['small']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['small'] = small.toJson();
    return _data;
  }
}

class Small {
  Small({
    required this.url,
  });
  late final String url;

  Small.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['url'] = url;
    return _data;
  }
}
