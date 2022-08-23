class InitVariable {
  final String appName = "Time Research innovation";
  // Base URL
  final String baseUrl = "https://worldhealthaid.com/";
  // API Base URL
  final String baseApi = "https://worldhealthaid.com/api/";

  // API Url
  final String doctorList = "doctor/list";
  final String doctorInfo = "doctorById/";

  Uri apiUri(String url) {
    return Uri.parse(baseApi + url);
  }

  String baseUri(String url) {
    return (baseUrl + url).toString();
  }
}
