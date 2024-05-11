import 'package:flutter/material.dart';
import 'package:nibras_test/widgets/CustomListTile.dart';
import 'package:nibras_test/widgets/customDroDown.dart';
import 'package:nibras_test/widgets/customListTileWithDate.dart';

import '../../../widgets/customListTileWithTxt.dart';

class CompanyInfoTabTwo extends StatefulWidget {
  const CompanyInfoTabTwo({super.key});

  @override
  State<CompanyInfoTabTwo> createState() => _CompanyInfoTabState();
}

class _CompanyInfoTabState extends State<CompanyInfoTabTwo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          color: Colors.white24.withOpacity(0.8),
          child: const Column(
            children: [
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
                      title: 'التسلسل',
                      numOfTxTf: 1,
                      hintLabel: [' '],
                    ),
                  ),
                  Expanded(
                    child: CutomListTileWithTextFeild(
                      title: 'تسلسل السجل التجاري',
                      numOfTxTf: 1,
                      hintLabel: [' '],
                    ),
                  ),
                  Expanded(
                    child: CutomListTileWithTextFeild(
                      title: 'اصدار السجل التجاري',
                      numOfTxTf: 1,
                      hintLabel: [' '],
                    ),
                  ),
                ],
              ),

              CustomListTile(
                  element: CutomListTileWithdrop(
                    withTxt: false,
                    options: ['5/9/2020'],
                  ),
                  title: 'تاريخ السجل التجاري'),
              CutomListTileWithTextFeild(
                title: 'وقائع التفويض  ',
                numOfTxTf: 1,
                maxline: 7,
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
        ),
      ]),
    );
  }
}
