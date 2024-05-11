import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nibras_test/features_ui/CompanyPage/Tabs/company_infoTab.dart';
import 'package:nibras_test/features_ui/CompanyPage/Tabs/company_infoTab_three.dart';
import 'package:nibras_test/features_ui/CompanyPage/Tabs/company_infoTab_two.dart';
import 'package:nibras_test/widgets/backgroundScreen.dart';
import 'package:nibras_test/widgets/companyInfo.dart';
import 'package:nibras_test/widgets/customDrawer.dart';

class CompaniesPage extends StatefulWidget {
  CompaniesPage({Key? key}) : super(key: key);

  @override
  State<CompaniesPage> createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<List<String>> allcompanies = [
    ['1', 'شركة الفوسقات الاردنية المحدودة'],
    ['2', ' شركة اوبتما لادارة الخدمات والنفقات الطبية التأمينية'],
    ['3', 'شركة الفوسقات الاردنية المحدودة'],
    ['4', 'شركة الفوسقات الاردنية المحدودة'],
    ['8', 'شركة الفوسقات الاردنية المحدودة'],
    ['9', 'شركة الفوسقات الاردنية المحدودة'],
    ['10', 'شركة الفوسقات الاردنية المحدودة'],
    ['88', 'شركة الفوسقات الاردنية المحدودة'],
    ['30', 'شركة الفوسقات الاردنية المحدودة'],
    ['5', 'شركة الفوسقات الاردنية المحدودة'],
    ['6', 'شركة الفوسقات الاردنية المحدودة'],
  ];

  List<List<String>> allRecords = [
    ['33', '987', '5/9/2020'],
    ['35', '96523584', '30/4/2020'],
    ['36', "569625", "4/9/2020"],
    ['36', "569625", "4/9/2020"],
    ['36', "569625", "4/9/2020"],
    ['36', "569625", "4/9/2020"],
    ['36', "569625", "4/9/2020"],
    ['40', 'م ش /38868/49273/2', '29/4/2018'],
  ];

  List<List<String>> companyRecordPersons = [
    ['75', 'تفويض قانوني ', 'تفويض منفرد', '2/6/2020 '],
    ['76', 'تفويض قانوني ', 'تفويض منفرد', '2/6/2020 '],
    ['77', 'تفويض قانوني ', 'تفويض منفرد', '2/6/2020 '],
    ['78', 'تفويض قانوني ', 'تفويض منفرد', '2/6/2020 '],
    ['78', 'تفويض قانوني ', 'تفويض منفرد', '2/6/2020 '],
    ['78', 'تفويض قانوني ', 'تفويض منفرد', '2/6/2020 '],
    ['78', 'تفويض قانوني ', 'تفويض منفرد', '2/6/2020 '],
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Future<void> _showSearchResultsTab1() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'المنشات:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          content: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  searchTextFeild(),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        ' #',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'رقم المنشأة',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  for (var comp in allcompanies)
                    CompanyInfoWidget(resList: comp),
                  // CompanyInfoWidget(
                  //     resList: ['27', 'شركة الفوسقات الاردنية المحدودة']),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'اغلاق',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget searchTextFeild() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintStyle: TextStyle(color: Colors.black),
          prefixIcon: Icon(Icons.search), // Search icon
        ),
      ),
    );
  }

  Future<void> _showSearchResultsTab2() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('السجل التجاري للمنشأة :'),
          content: SingleChildScrollView(
            child: Container(
              // padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  searchTextFeild(),
                  SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '#',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              'التسلسل',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              'التاريخ',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        // CompanyInfoWidget(
                        //     num: 33, comName: 'شركة الفوسقات الاردنية المحدودة'),
                        // CompanyInfoWidget(resList: ['33', '987', '5/9/2020']),
                        for (var comp in allRecords)
                          CompanyInfoWidget(resList: comp),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'اغلاق',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showSearchResultsTab3() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('التفويض:'),
          content: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(), // Enable scrolling
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Set to take minimum vertical space
              children: [
                searchTextFeild(), // Integration of searchTextFeild widget
                SizedBox(height: 40),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '# ',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Text(
                                'النوع',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                ' الصفة ',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'التاريخ  ',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          ),
                          // CompanyInfoWidget(resList: [
                          //   '75',
                          //   'تفويض قانوني ',
                          //   'تفويض منفرد',
                          //   '2/6/2020 '
                          // ]),
                          for (var comp in companyRecordPersons)
                            CompanyInfoWidget(resList: comp),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'اغلاق',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24.withOpacity(0.5),
          title: Text('المنشات'),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {
                    if (_tabController.index == 0) {
                      _showSearchResultsTab1();
                    } else if (_tabController.index == 1) {
                      _showSearchResultsTab2();
                    } else {
                      _showSearchResultsTab3();
                    }
                  },
                  icon: Icon(
                    Icons.search,
                    color: const Color(0xffffc200),
                    size: 30.0,
                  )),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicator: BoxDecoration(
              color: const Color(0xffffc200),
            ),
            labelColor: Colors.black,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'المعلومات الاولية \n للمنشاة',
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.info),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'السجل التجاري\n للمنشاة',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.edit_calendar_outlined),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'المفوضون بالتوقيع\n عن  المنشاة',
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.person),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: CustomDrwaer(),
        body: BackgroundWidget(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  CompanyInfoTab(),
                  CompanyInfoTabTwo(),
                  CompanyInfoTabThree(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
