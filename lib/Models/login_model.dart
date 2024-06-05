class LoginModel {
  bool? status;
  int? code;
  String? message;
  Body? body;

  LoginModel({this.status, this.code, this.message, this.body});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    body = json['body'] != null ? new Body.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.body != null) {
      data['body'] = this.body!.toJson();
    }
    return data;
  }
}

class Body {
  int? status;
  bool? isExhibitor;
  int? hasProfileUpdate;
  String? id;
  String? name;
  String? shortName;
  String? company;
  Null? position;
  Null? avatar;
  String? role;
  String? category;
  String? timezone;
  String? parentId;
  String? isNoticeBoard;
  String? subRole;
  String? token;
  String? accessToken;
  String? sso;

  Body(
      {this.status,
        this.isExhibitor,
        this.hasProfileUpdate,
        this.id,
        this.name,
        this.shortName,
        this.company,
        this.position,
        this.avatar,
        this.role,
        this.category,
        this.timezone,
        this.parentId,
        this.isNoticeBoard,
        this.subRole,
        this.token,
        this.accessToken,
        this.sso});

  Body.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    isExhibitor = json['is_exhibitor'];
    hasProfileUpdate = json['has_profile_update'];
    id = json['id'];
    name = json['name'];
    shortName = json['short_name'];
    company = json['company'];
    position = json['position'];
    avatar = json['avatar'];
    role = json['role'];
    category = json['category'];
    timezone = json['timezone'];
    parentId = json['parent_id'];
    isNoticeBoard = json['is_notice_board'];
    subRole = json['sub_role'];
    token = json['token'];
    accessToken = json['access_token'];
    sso = json['sso'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['is_exhibitor'] = this.isExhibitor;
    data['has_profile_update'] = this.hasProfileUpdate;
    data['id'] = this.id;
    data['name'] = this.name;
    data['short_name'] = this.shortName;
    data['company'] = this.company;
    data['position'] = this.position;
    data['avatar'] = this.avatar;
    data['role'] = this.role;
    data['category'] = this.category;
    data['timezone'] = this.timezone;
    data['parent_id'] = this.parentId;
    data['is_notice_board'] = this.isNoticeBoard;
    data['sub_role'] = this.subRole;
    data['token'] = this.token;
    data['access_token'] = this.accessToken;
    data['sso'] = this.sso;
    return data;
  }
}
