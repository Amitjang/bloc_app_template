import 'dart:convert';
/// detail : "Method Not Allowed"

AudioProcessResponse audioProcessResponseFromJson(String str) => AudioProcessResponse.fromJson(json.decode(str));
String audioProcessResponseToJson(AudioProcessResponse data) => json.encode(data.toJson());
class AudioProcessResponse {
  AudioProcessResponse({
      String? detail,}){
    _detail = detail;
}

  AudioProcessResponse.fromJson(dynamic json) {
    _detail = json['detail'];
  }
  String? _detail;
AudioProcessResponse copyWith({  String? detail,
}) => AudioProcessResponse(  detail: detail ?? _detail,
);
  String? get detail => _detail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['detail'] = _detail;
    return map;
  }

}