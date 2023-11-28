import 'package:akar_app/view/pages/Auth/login_page.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/login", page: () => LoginPage()),
];
