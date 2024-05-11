import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nibras_test/widgets/CustomListTile.dart';
import 'package:nibras_test/widgets/ImagePicker.dart';
import 'package:nibras_test/widgets/customDroDown.dart';
import 'package:nibras_test/widgets/customListTileWithDate.dart';

import '../../../widgets/customListTileWithTxt.dart';

class CompanyInfoTab extends StatefulWidget {
  const CompanyInfoTab({super.key});

  @override
  State<CompanyInfoTab> createState() => _CompanyInfoTabState();
}

class _CompanyInfoTabState extends State<CompanyInfoTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      color: Colors.white24.withOpacity(0.8),
      child: const Center(
        child: SingleChildScrollView(
          child: Column(children: [
            ImagePickerWidget(),
            Column(
              children: [
                Divider(),
                // CustomListTile(element: [
                //   // CustomTextFormFeild(
                //   //   hintTexts: ['', '', ''],
                //   // ),
                // ], title: 'اسم المنشأة'),
                CutomListTileWithTextFeild(
                  numOfTxTf: 3,
                  title: 'اسم المنشأة',
                ),
                // CustomListTile(
                //   element: [
                //     CustomTextFormFeild(
                //       hintTexts: [''],
                //     ),
                //   ],
                //   title: ' العلامة التجارية',
                // ),

                CutomListTileWithTextFeild(
                    title: ' العلامة التجارية', numOfTxTf: 1),
                // CustomListTile(
                //   element: [
                //     CustomTextFormFeild(
                //       hintTexts: ['', ''],
                //     ),
                //   ],
                //   title: 'وصف المسمى',
                // ),

                Row(
                  children: [
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: 'وصف المسمى',
                        numOfTxTf: 2,
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: 'الرقم الوطني للمنشأة ',
                        numOfTxTf: 2,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: 'رقم تسجيل المنشأة  ',
                        numOfTxTf: 1,
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' رقم السجل التجاري',
                        numOfTxTf: 1,
                      ),
                    ),
                  ],
                ),
                CustomListTile(
                    element: CutomListTileWithdrop(
                      options: ['شركة تضامنية', 'شركة غير تضامنية'],
                    ),
                    title: 'صفة تسجيل المنشأة'),
                CustomListTile(
                    element: CutomListTileWithdrop(
                      options: ['منشأة حكومية', 'منشأة خاصة'],
                    ),
                    title: 'نوع المنشأة'),
                CustomListTile(
                    element: CutomListTileWithdrop(
                      options: ['اردنية', 'سعودية'],
                    ),
                    title: 'جنسية المنشأة'),

                // CutomListTileWithdrop(),
                // CutomListTileWithdrop(
                //   title: 'صفة تسجيل المنشأة',
                //   numOfTxTf: 4,
                // ),
                // CutomListTileWithdrop(
                //   title: 'نوع المنشأة',
                //   numOfTxTf: 4,
                // ),
                // CutomListTileWithdrop(
                //   title: 'جنسية المنشأة',
                //   numOfTxTf: 4,
                // ),

                Row(
                  children: [
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' رقم  الموبايل ',
                        numOfTxTf: 1,
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' رقم  الهاتف ',
                        numOfTxTf: 1,
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' رقم  الفاكس ',
                        numOfTxTf: 1,
                      ),
                    ),
                  ],
                ),
                CutomListTileWithTextFeild(
                  title: ' البريد الالكتروني   ',
                  numOfTxTf: 1,
                ),
                CutomListTileWithTextFeild(
                  title: '  العنوان   ',
                  numOfTxTf: 2,
                  maxline: 3,
                ),
                CutomListTileWithTextFeild(
                  title: '  ملاحظات   ',
                  numOfTxTf: 1,
                  maxline: 5,
                ),

                CustomListTileWithDate(
                  title: '  تاريخ السجل   ',
                ),

                CustomListTileWithDate(
                  title: '  تاريخ التحديث   ',
                ),

                // ListTile(
                //     title: Text(
                //       'رقم تسجبل المنشأة   ',
                //       style:
                //           TextStyle(fontWeight: FontWeight.bold),
                //     ),
                //     subtitle: Row(
                //       children: [
                //         Expanded(
                //           flex: 1,
                //           child: TextFormField(
                //             decoration: const InputDecoration(
                //               border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.all(
                //                       Radius.circular(8))),
                //               hintText: '',
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 5,
                //         ),
                //         Expanded(
                //           flex: 2,
                //           child: TextFormField(
                //             decoration: const InputDecoration(
                //               border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.all(
                //                       Radius.circular(8))),
                //               hintText: '',
                //             ),
                //           ),
                //         ),
                //       ],
                //     )),
                // Row(
                //   children: [
                //     Expanded(
                //       child: ListTile(
                //         title: Text('Department'),
                //         subtitle: TextFormField(
                //           decoration: const InputDecoration(
                //             border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.all(
                //                     Radius.circular(8))),
                //             hintText: '  Department',
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 5,
                //     ),
                //     Expanded(
                //       child: ListTile(
                //         title: Text('Year Of Study'),
                //         subtitle: TextFormField(
                //           decoration: const InputDecoration(
                //             border: OutlineInputBorder(
                //                 borderRadius: BorderRadius.all(
                //                     Radius.circular(8))),
                //             hintText: '  Year Of Study',
                //           ),
                //         ),
                //       ),
                // ),
                // ],
                // )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
