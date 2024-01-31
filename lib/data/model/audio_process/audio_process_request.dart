import 'dart:convert';
/// query : "UserEmail"
/// firebase_bucket_name : "firebase_bucket_name"

AudioProcessRequest audioProcessRequestFromJson(String str) => AudioProcessRequest.fromJson(json.decode(str));
String audioProcessRequestToJson(AudioProcessRequest data) => json.encode(data.toJson());
class AudioProcessRequest {
  AudioProcessRequest({
      String? query, 
      String? firebaseBucketName,}){
    _query = query;
    _firebaseBucketName = firebaseBucketName;
}

  AudioProcessRequest.fromJson(dynamic json) {
    _query = json['query'];
    _firebaseBucketName = json['firebase_bucket_name'];
  }
  String? _query;
  String? _firebaseBucketName;
AudioProcessRequest copyWith({  String? query,
  String? firebaseBucketName,
}) => AudioProcessRequest(  query: query ?? _query,
  firebaseBucketName: firebaseBucketName ?? _firebaseBucketName,
);
  String? get query => _query;
  String? get firebaseBucketName => _firebaseBucketName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['query'] = _query;
    map['firebase_bucket_name'] = _firebaseBucketName;
    return map;
  }

}