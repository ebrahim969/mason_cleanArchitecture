class ResponseHandlerPost {
  static responseHandlerPost(dynamic response) {
    if (response.statusCode != 200) {
      throw Exception(response.data['message']);
    } else {
      return '';
    }
  }
}
