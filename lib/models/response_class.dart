class ResponseClass<T> {
  bool success;
  String massage;
  T? data;
  ResponseClass({
    required this.success,
    required this.massage,
    this.data,
 });
}