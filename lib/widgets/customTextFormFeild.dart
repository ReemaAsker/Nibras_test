import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatefulWidget {
  const CustomTextFormFeild({super.key, this.hintText = "", this.maxline = 1});
  final String hintText;
  final int maxline;
  final int flex = 0;

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: TextFormField(
            maxLines: widget.maxline,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              hintText: widget.hintText,
            ),
            style: TextStyle(height: 1),
          )),
    );
  }
}
/*
Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: Text(
                        'ddd',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffffc200),
                          foregroundColor: Colors.black,
                          elevation: 3,
                        ),
                        onPressed: () => null,
                        child: Row(
                          children: [
                            Icon(Icons.date_range),
                            Text(
                              'اختر التاريخ والوقت',
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                          ],
                        )),
                  ],
                )


*/

/*

Row(
      children: List.generate(widget.hintTexts.length, (index) {
        return Expanded(
          flex: ++index,
          child: Padding(
              padding: (widget.maxline > 1 && index == 1)
                  ? EdgeInsets.only(left: 20.0)
                  : EdgeInsets.only(left: 8.0),
              child: TextFormField(
                maxLines: widget.maxline,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  hintText: '',
                ),
                style: TextStyle(height: 1),
              )),
        );
      }),
    );

*/