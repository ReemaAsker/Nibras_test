import 'package:get/get.dart';
import 'package:nibras_test/features_ui/CompanyPage/CompaniesPage.dart';
import 'package:nibras_test/features_ui/CompanyPage/Tabs/company_infoTab.dart';
import 'package:nibras_test/features_ui/CompanyPage/Tabs/company_infoTab_three.dart';
import 'package:nibras_test/features_ui/CompanyPage/Tabs/company_infoTab_two.dart';
import 'package:nibras_test/features_ui/HomePage/home_page.dart';
import 'package:nibras_test/features_ui/login/login.dart';

class AppPages {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: "/", page: () => Login()),
    GetPage(name: "/home", page: () => HomePage()),
    GetPage(name: "/companypage", page: () => CompaniesPage()),
    GetPage(name: "/tabone", page: () => CompanyInfoTab()),
    GetPage(name: "/tabtwo", page: () => CompanyInfoTabTwo()),
    GetPage(name: "/tabthree", page: () => CompanyInfoTabThree()),
  ];
}
