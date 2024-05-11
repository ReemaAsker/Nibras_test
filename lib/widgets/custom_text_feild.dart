// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   final String label;
//   final String hintText;
//   final bool obscureText;

//   const CustomTextField({
//     required this.label,
//     required this.hintText,
//     this.obscureText = false,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10),
//               Text(
//                 label,
//                 style: Theme.of(context).textTheme.displaySmall,
//               ),
//               SizedBox(height: 10),
//               TextField(
//                 obscureText: obscureText,
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(
//                       color: Colors.black,
//                     ),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   labelText: label,
//                   focusedBorder: OutlineInputBorder(
//                     borderSide:
//                         const BorderSide(color: Colors.black, width: 2.0),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.red,
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   hintText: hintText,
//                   hintStyle: TextStyle(color: Colors.black),
//                   labelStyle: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;

  const CustomTextField({
    required this.label,
    required this.hintText,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        SizedBox(height: 5), // Add some vertical space
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: label,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black),
            labelStyle: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
