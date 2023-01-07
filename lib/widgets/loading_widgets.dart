import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../constants.dart' as constants;
import '../styles.dart' as styles;

class LoadingWidgets extends StatelessWidget {
  const LoadingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NoInternet(),
        Container(
          margin: EdgeInsets.all(20),
          child: SpinKitCircle(
            color: Color(constants.mainTheme),
            size: 50.0,
          ),
        ),
      ],
    );
  }
}

// class LoadingWidgets2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             NoInternet(),
//             SpinKitCircle(
//               color: Color(constants.mainTheme),
//               size: 50.0,
//             ),
//             Text("Updating", style: styles.ThemeText.textInputHeaderNameBlue),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LogOutLoadingWidgets extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SpinKitCircle(
//               color: Color(constants.mainTheme),
//               size: 50.0,
//             ),
//             Text("Logging off",
//                 style: styles.ThemeText.textInputHeaderNameBlue),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Future warningToast(message) {
//   return Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.TOP,
//       timeInSecForIosWeb: 10,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       fontSize: 16.0);
// }

// void showFloatingSnackBar(BuildContext context, message) {
//   Flushbar(
//     shouldIconPulse: false,
//     messageText: Center(
//       child: Text(message,
//           style: TextStyle(
//               fontSize: 15,
//               fontFamily: constants.regular,
//               color: Colors.green[900])),
//     ),
//     duration: Duration(seconds: 3),
//     backgroundColor: Colors.green[100],
//     flushbarPosition: FlushbarPosition.TOP,
//     margin: EdgeInsets.fromLTRB(35, kToolbarHeight + 5, 35, 0),
//     borderRadius: BorderRadius.circular(5),
//   )..show(context);
// }

// void showFloatingSnackBarError(BuildContext context, message) {
//   Flushbar(
//     shouldIconPulse: false,
//     messageText: Center(
//       child: Text(message,
//           style: TextStyle(
//               fontSize: 15,
//               fontFamily: constants.regular,
//               color: Colors.red[900])),
//     ),
//     duration: Duration(seconds: 3),
//     backgroundColor: Colors.red[100],
//     flushbarPosition: FlushbarPosition.TOP,
//     margin: EdgeInsets.fromLTRB(35, kToolbarHeight + 5, 35, 0),
//     borderRadius: BorderRadius.circular(5),
//   )..show(context);
// }

class AlertDialogBox extends StatelessWidget {
  final String? title;
  final String? content;
  final String? firstButton;
  final String? secondButton;
  final Function? firstAction;
  final Function? secondAction;
  const AlertDialogBox(
      {Key? key,
      this.title,
      this.content,
      this.firstButton,
      this.secondButton,
      this.firstAction,
      this.secondAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Theme(
        data: ThemeData.light(),
        child: CupertinoAlertDialog(
          title: Text(
            title!,
            textAlign: TextAlign.center,
            style: styles.ThemeText.appBarTitle,
          ),
          content: Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Text(
              content!,
              style: styles.ThemeText.textInputHeaderName,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                secondButton!,
                style: styles.ThemeText.baseFontGreyBoldStyle,
              ),
              isDestructiveAction: true,
              onPressed: secondAction!(),
            ),
            CupertinoDialogAction(
              child: Text(
                firstButton!,
                style: styles.ThemeText.baseFontBlueBoldStyle,
              ),
              isDestructiveAction: true,
              onPressed: firstAction!(),
            ),
          ],
        ),
      ),
    );
  }
}

// class ErrorDialogBox extends StatelessWidget {
//   final String title;
//   final String content;
//   final String firstButton;
//   final Function firstAction;
//   const ErrorDialogBox(
//       {Key key, this.title, this.content, this.firstButton, this.firstAction})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BackdropFilter(
//       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//       child: Theme(
//         data: ThemeData.light(),
//         child: CupertinoAlertDialog(
//           title:  Text(
//             title,
//             textAlign: TextAlign.center,
//             style: styles.ThemeText.appBarTitle,
//           ),
//           content: Padding(
//             padding: const EdgeInsets.only(top: 14),
//             child:  Text(
//               content,
//               style: styles.ThemeText.textInputHeaderName,
//             ),
//           ),
//           actions: <Widget>[
//              CupertinoDialogAction(
//               child: Text(
//                 firstButton,
//                 style: styles.ThemeText.baseFontBlueBoldStyle,
//               ),
//               isDestructiveAction: true,
//               onPressed: firstAction,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NetworkChecker extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset("assets/images/no-signal.png",
//                 width: 130, height: 130, fit: BoxFit.fill),
//             SizedBox(
//               height: 16,
//             ),
//             Text('please check your internet connection..',
//                 textAlign: TextAlign.center,
//                 style: styles.ThemeText.appBarTitle),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.3,
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 primary: Color(constants.appBarTheme),
//               ),
//               child: Text("GO TO SETTINGS"),
//               onPressed: () {
//                 AppSettings.openDataRoamingSettings();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
        debounceDuration: Duration.zero,
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          if (connectivity == ConnectivityResult.mobile ||
              connectivity == ConnectivityResult.wifi) {
            return child;
          }
          return Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Text(
                "No Internet",
                textAlign: TextAlign.center,
                style: styles.ThemeText.textInputHeaderNameWhite,
              ));
        },
        child: SizedBox());
  }
}
