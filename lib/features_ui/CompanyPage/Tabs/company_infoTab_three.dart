import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nibras_test/widgets/CustomListTile.dart';
import 'package:nibras_test/widgets/ImagePicker.dart';
import 'package:nibras_test/widgets/customDroDown.dart';
import 'package:nibras_test/widgets/customListTileWithDate.dart';

import '../../../widgets/customListTileWithTxt.dart';

class CompanyInfoTabThree extends StatefulWidget {
  const CompanyInfoTabThree({super.key});

  @override
  State<CompanyInfoTabThree> createState() => _CompanyInfoTabState();
}

class _CompanyInfoTabState extends State<CompanyInfoTabThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      color: Colors.white24.withOpacity(0.8),
      child: const Center(
        child: SingleChildScrollView(
          child: Column(children: [
            ImagePickerWidget(
              defult_icon: Icons.person,
            ),
            const Column(
              children: [
                Divider(),
                Row(
                  children: [
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        numOfTxTf: 2,
                        title: 'اسم المنشأة',
                        enabled: false,
                        hintLabel: ['26', 'شركة\nالفوسفات'],
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' العلامة التجارية',
                        numOfTxTf: 1,
                        enabled: false,
                        hintLabel: ['شركة الفوسفات'],
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: '  صفة تسجيل المنشأة',
                        numOfTxTf: 1,
                        enabled: false,
                        hintLabel: ['شركة  تضامنية'],
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' نوع المنشأة',
                        numOfTxTf: 1,
                        enabled: false,
                        hintLabel: ['منشأة حكومية '],
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: 'جنسية المنشأة   ',
                        numOfTxTf: 1,
                        enabled: false,
                        hintLabel: [' شركة اردنية '],
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' رقم السجل التجاري   ',
                        numOfTxTf: 1,
                        enabled: false,
                        hintLabel: ['5289364  '],
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' السجل التجاري   ',
                        numOfTxTf: 1,
                        enabled: false,
                        hintLabel: ['38866  '],
                      ),
                    ),
                    Expanded(
                      child: CutomListTileWithTextFeild(
                        title: ' تسلسل السجل التجاري ',
                        numOfTxTf: 1,
                        enabled: false,
                        hintLabel: ['38866  '],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: CutomListTileWithTextFeild(
                    title: ' تاريخ السجل التجاري ',
                    numOfTxTf: 1,
                    enabled: false,
                    hintLabel: ['5/9/2020  '],
                  ),
                ),
                CutomListTileWithTextFeild(
                  title: 'التسلسل',
                  numOfTxTf: 1,
                  hintLabel: ['75'],
                ),
                CutomListTileWithTextFeild(
                  title: 'اسم المفوض ',
                  numOfTxTf: 2,
                  hintLabel: ['71', 'اسماء سميرة تواف عبد القادر حمد المحترمة'],
                ),
                CustomListTile(
                  element: CutomListTileWithdrop(
                    withTxt: false,
                    options: ['2/6/2020'],
                  ),
                  title: 'تاريخ التفويض',
                ),
                CustomListTile(
                  element: CutomListTileWithdrop(
                    withTxt: true,
                    options: ['نفويض قانوني'],
                  ),
                  title: ' انواع التفويض',
                ),
                CustomListTile(
                  element: CutomListTileWithdrop(
                    withTxt: true,
                    options: ['نفويض منفرد'],
                  ),
                  title: 'صفة التفويض',
                ),

                CutomListTileWithTextFeild(
                  title: ' نص التفويض  ',
                  numOfTxTf: 1,
                  maxline: 8,
                ),
                CutomListTileWithTextFeild(
                  title: 'ملاحظات   ',
                  numOfTxTf: 1,
                  maxline: 4,
                ),

                Row(
                  children: [
                    Expanded(
                      child: CustomListTileWithDate(
                        forEdit: false,
                        title: '  تاريخ السجل   ',
                      ),
                    ),
                    Expanded(
                      child: CustomListTileWithDate(
                        forEdit: false,
                        title: '  تاريخ التحديث   ',
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                )
                // Row(
                //   children: [
                //     Expanded(
                //       child: CutomListTileWithTextFeild(
                //         title: 'رقم تسجيل المنشأة  ',
                //         numOfTxTf: 1,
                //         enabled: true,
                //       ),
                //     ),
                //     Expanded(
                //       child: CutomListTileWithTextFeild(
                //         title: ' رقم السجل التجاري',
                //         numOfTxTf: 1,
                //         enabled: true,
                //       ),
                //     ),
                //   ],
                // ),

                // Row(
                //   children: [
                //     Expanded(
                //       child: CutomListTileWithTextFeild(
                //         title: ' رقم  الموبايل ',
                //         numOfTxTf: 1,
                //         enabled: true,
                //       ),
                //     ),
                //     Expanded(
                //       child: CutomListTileWithTextFeild(
                //         title: ' رقم  الهاتف ',
                //         numOfTxTf: 1,
                //         enabled: true,
                //       ),
                //     ),
                //     Expanded(
                //       child: CutomListTileWithTextFeild(
                //         title: ' رقم  الفاكس ',
                //         numOfTxTf: 1,
                //         enabled: true,
                //       ),
                //     ),
                //   ],
                // ),
                // CutomListTileWithTextFeild(
                //   title: ' البريد الالكتروني   ',
                //   numOfTxTf: 1,
                // ),
                // CutomListTileWithTextFeild(
                //   title: '  العنوان   ',
                //   numOfTxTf: 2,
                //   maxline: 3,
                // ),
                // CutomListTileWithTextFeild(
                //   title: '  ملاحظات   ',
                //   numOfTxTf: 1,
                //   maxline: 5,
                // ),

                // CustomListTileWithDate(
                //   title: '  تاريخ السجل   ',
                // ),

                // CustomListTileWithDate(
                //   title: '  تاريخ التحديث   ',
                // ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
