class UserModel {
  UserModel({
    required this.id,
    required this.usuaNome,
    required this.usuaMail,
    required this.usuaTokenId,
    required this.usuaTokenAcess,
    required this.usuaSenha,
    required this.usuaPhoto,
  });
  late final String id;
  late final String usuaNome;
  late final String usuaMail;
  late final String usuaTokenId;
  late final String usuaTokenAcess;
  late final String usuaSenha;
  late final UsuaPhoto usuaPhoto;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usuaNome = json['usua_nome'];
    usuaMail = json['usua_mail'];
    usuaTokenId = json['usua_token_id'];
    usuaTokenAcess = json['usua_token_acess'];
    usuaSenha = json['usua_senha'];
    usuaPhoto = UsuaPhoto.fromJson(json['usua_photo']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['usua_nome'] = usuaNome;
    _data['usua_mail'] = usuaMail;
    _data['usua_token_id'] = usuaTokenId;
    _data['usua_token_acess'] = usuaTokenAcess;
    _data['usua_senha'] = usuaSenha;
    _data['usua_photo'] = usuaPhoto.toJson();
    return _data;
  }
}

class UsuaPhoto {
  UsuaPhoto({
    required this.id,
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.related,
    required this.createdBy,
    required this.updatedBy,
  });
  late final String id;
  late final String name;
  late final String alternativeText;
  late final String caption;
  late final int width;
  late final int height;
  late final Formats formats;
  late final String hash;
  late final String ext;
  late final String mime;
  late final int size;
  late final String url;
  late final String previewUrl;
  late final String provider;
  late final ProviderMetadata providerMetadata;
  late final String related;
  late final String createdBy;
  late final String updatedBy;

  UsuaPhoto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats = Formats.fromJson(json['formats']);
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = json['previewUrl'];
    provider = json['provider'];
    providerMetadata = ProviderMetadata.fromJson(json['provider_metadata']);
    related = json['related'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['alternativeText'] = alternativeText;
    _data['caption'] = caption;
    _data['width'] = width;
    _data['height'] = height;
    _data['formats'] = formats.toJson();
    _data['hash'] = hash;
    _data['ext'] = ext;
    _data['mime'] = mime;
    _data['size'] = size;
    _data['url'] = url;
    _data['previewUrl'] = previewUrl;
    _data['provider'] = provider;
    _data['provider_metadata'] = providerMetadata.toJson();
    _data['related'] = related;
    _data['created_by'] = createdBy;
    _data['updated_by'] = updatedBy;
    return _data;
  }
}

class Formats {
  Formats();

  Formats.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class ProviderMetadata {
  ProviderMetadata();

  ProviderMetadata.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}
