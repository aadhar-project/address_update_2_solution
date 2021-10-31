// ignore: camel_case_types
class optApi{
  final String uid;
  final String txnId;

  optApi({required this.uid, required this.txnId});

  factory optApi.fromJson(Map<String, dynamic> json) {
    return optApi(
      uid: json['uid'],
      txnId: json['txnId'],
    );
  }
}
