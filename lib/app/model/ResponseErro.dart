class ResponseError {
  ResponseError({
    required this.statusCode,
    required this.error,
    required this.message,
    required this.data,
  });
  late final int statusCode;
  late final String error;
  late final List<Message> message;
  late final List<Data> data;

  ResponseError.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    error = json['error'];
    message =
        List.from(json['message']).map((e) => Message.fromJson(e)).toList();
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['statusCode'] = statusCode;
    _data['error'] = error;
    _data['message'] = message.map((e) => e.toJson()).toList();
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Message {
  Message({
    required this.messages,
  });
  late final List<Messages> messages;

  Message.fromJson(Map<String, dynamic> json) {
    messages =
        List.from(json['messages']).map((e) => Messages.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['messages'] = messages.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Messages {
  Messages({
    required this.id,
    required this.message,
  });
  late final String id;
  late final String message;

  Messages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['message'] = message;
    return _data;
  }
}

class Data {
  Data({
    required this.messages,
  });
  late final List<Messages> messages;

  Data.fromJson(Map<String, dynamic> json) {
    messages =
        List.from(json['messages']).map((e) => Messages.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['messages'] = messages.map((e) => e.toJson()).toList();
    return _data;
  }
}
