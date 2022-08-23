import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../config/contractors.dart';

class HomeController extends GetxController {
  // Doctors
  RxList doctors = [].obs;
  RxBool onLoadDoctors = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadInitData();
  }

  void loadInitData() {
    loadDoctors();
  }

  // Slider
  void loadDoctors() async {
    Uri url = InitVariable().apiUri(InitVariable().doctorList);
    await http.get(url).then((response) {
      if (response.statusCode == 200) {
        var rowData = jsonDecode(response.body);
        doctors.clear();
        for (var dataItem in rowData['doctors']) {
          doctors.add(dataItem);
        }
        onLoadDoctors.value = true;
      } else {
        var rowData = jsonDecode(response.body);
        onLoadDoctors.value = false;
        print(
            "fileType: Controller, fileName: home_cont.dart, function: loadDoctors");
        print(rowData);
      }
    });
  }
}
