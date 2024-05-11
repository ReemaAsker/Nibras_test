import 'package:flutter/material.dart';
import 'package:nibras_test/widgets/companyInfo.dart';

class CustomDrwaer extends StatefulWidget {
  const CustomDrwaer({super.key});

  @override
  State<CustomDrwaer> createState() => _CustomDrwaerState();
}

class _CustomDrwaerState extends State<CustomDrwaer> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(image: AssetImage("images/logo.png")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.fiber_new_sharp),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: ['سجل جديد'],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.edit),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: ['تعديل السجل '],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.save),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: ['حفظ السجل '],
                    clikable: false,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.delete),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: ['حذف السجل '],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.close),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: ['الغاء التعديل  '],
                    clikable: false,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.print),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: ['طباعة التقرير   '],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: [' الاعدادت  '],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.output_rounded),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: [' تسجيل الخروج  '],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Icon(Icons.output_rounded),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CompanyInfoWidget(
                    resList: [' تسجيل الخروج  '],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
