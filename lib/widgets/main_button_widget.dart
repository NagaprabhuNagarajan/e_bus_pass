import 'package:flutter/material.dart';
import '../constants.dart' as constants;
import '../styles.dart' as styles;

class MainButton extends StatelessWidget {
  final String? buttonText;
  final Function()? onPressed;

  const MainButton({super.key, this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: const Color(constants.buttonTextWhite),
          primary: const Color(constants.mainTheme),
          minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 50),
          elevation: 0.0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onPressed: () => onPressed!,
        child: Text(
          buttonText!,
          style: styles.ThemeText.buttonBold,
        ),
      ),
    );
  }
}

// class MainOutLinedButton extends StatelessWidget {
//   final String buttonText;
//   final Function onPressed;

//   MainOutLinedButton({this.buttonText, this.onPressed});

//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 10),
//       padding: EdgeInsets.only(top: 5, bottom: 5),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           side: BorderSide(width: 3.0, color: Color(constants.mainTheme)),
//           onPrimary: Color(constants.buttonTextWhite),
//           primary: Color(constants.buttonTextWhite),
//           minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 50),
//           elevation: 0.0,
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(12)),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Text(
//           buttonText,
//           style: styles.ThemeText.buttonBoldBlack,
//         ),
//       ),
//     );
//   }
// }

// class DraftButton extends StatelessWidget {
//   final String buttonText;
//   final Function onPressed;

//   DraftButton({this.buttonText, this.onPressed});

//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.4,
//       padding: EdgeInsets.only(top: 5, bottom: 5),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           onPrimary: Color(constants.buttonTextWhite),
//           primary: Color(constants.buttonTextWhite),
//           minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 50),
//           elevation: 0.0,
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           side: BorderSide(width: 1.0, color: Color(constants.mainTheme)),
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(12),
//             ),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Text(
//           buttonText,
//           textAlign: TextAlign.center,
//           style: styles.ThemeText.textInputHeaderNameBlue,
//         ),
//       ),
//     );
//   }
// }

// class SaveButton extends StatelessWidget {
//   final String buttonText;
//   final Function onPressed;

//   SaveButton({this.buttonText, this.onPressed});

//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.4,
//       padding: EdgeInsets.only(top: 5, bottom: 5),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           onPrimary: Color(constants.buttonTextWhite),
//           primary: Color(constants.mainTheme),
//           minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 50),
//           elevation: 0.0,
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(12)),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Text(buttonText,
//             textAlign: TextAlign.center,
//             style: styles.ThemeText.textInputHeaderNameWhite),
//       ),
//     );
//   }
// }

// class DeleteButton extends StatelessWidget {
//   final String buttonText;
//   final Function onPressed;

//   DeleteButton({this.buttonText, this.onPressed});

//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.4,
//       padding: EdgeInsets.only(top: 5, bottom: 5),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           onPrimary: Color(constants.buttonTextWhite),
//           primary: Color(constants.buttonTextWhite),
//           minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 50),
//           elevation: 0.0,
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           side: BorderSide(width: 1.0, color: Colors.red),
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(12),
//             ),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Text(
//           buttonText,
//           textAlign: TextAlign.center,
//           style: styles.ThemeText.textInputHeaderNameRed,
//         ),
//       ),
//     );
//   }
// }

// class LinkButton extends StatelessWidget {
//   final String buttonText;
//   final Function onPressed;

//   LinkButton({this.buttonText, this.onPressed});

//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.4,
//       padding: EdgeInsets.only(top: 5, bottom: 5),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           onPrimary: Color(constants.buttonTextWhite),
//           primary: Color(constants.mainTheme),
//           minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 50),
//           elevation: 0.0,
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(12)),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Text(buttonText,
//             textAlign: TextAlign.center,
//             style: styles.ThemeText.textInputHeaderNameWhite),
//       ),
//     );
//   }
// }
