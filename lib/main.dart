import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'latihan/latihan_1.dart';
import 'latihan/latihan_list.dart';
import 'pages/ex_listview.dart';
import 'pages/month.dart';
import 'homies.dart';
import 'pages/ex_listview2.dart';
import 'app/routes/app_pages.dart';


void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
