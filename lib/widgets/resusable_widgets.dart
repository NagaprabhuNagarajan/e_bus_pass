import 'package:flutter/material.dart';
import '../constants.dart' as constants;
import '../styles.dart' as styles;

class TextFieldContainer extends StatelessWidget {
  final Widget? child;

  const TextFieldContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 15,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: child,
        ));
  }
}

// class ContainerBorder extends StatelessWidget {
//   final Widget child;

//   const ContainerBorder({Key key, this.child}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: Colors.grey[500],
//           width: 0.4,
//         ),
//         color: new Color(0xFFffffff),
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(4),
//             topRight: Radius.circular(4),
//             bottomLeft: Radius.circular(4),
//             bottomRight: Radius.circular(4)),
//       ),
//       child: child,
//     );
//   }
// }

// class IconButtonWidget extends StatelessWidget {
//   final Function onPressed;
//   final Function onLongPress;
//   final IconData iconData;

//   const IconButtonWidget(
//       {Key key, this.onPressed, this.iconData, this.onLongPress})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onLongPress: onLongPress,
//       child: Container(
//         margin: EdgeInsets.all(2),
//         width: 35,
//         height: 35,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: IconButton(
//           iconSize: 27,
//           splashRadius: 25,
//           alignment: Alignment.center,
//           color: Colors.white,
//           icon: Icon(iconData),
//           onPressed: onPressed,
//         ),
//       ),
//     );
//   }
// }

// class RoundedIconButtonWidget extends StatelessWidget {
//   final Function onPressed;
//   final IconData iconData;

//   const RoundedIconButtonWidget({Key key, this.onPressed, this.iconData})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(5),
//       width: 40,
//       height: 40,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: IconButton(
//         iconSize: 26,
//         splashRadius: 25,
//         alignment: Alignment.center,
//         color: Color(constants.pageThemeColor),
//         icon: Icon(iconData),
//         onPressed: onPressed,
//       ),
//     );
//   }
// }

// class DropDownInput extends StatelessWidget {
//   final double width;
//   final String selectedValue;
//   final List dropDownList;
//   final Function onChanged;
//   final String title;
//   const DropDownInput(
//       {Key key,
//       this.dropDownList,
//       this.onChanged,
//       this.selectedValue,
//       this.title,
//       this.width})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 8, bottom: 8),
//       width: width,
//       child: Padding(
//         padding: const EdgeInsets.only(right: 5.0),
//         child: DropdownButton(
//           hint: Text(
//             title,
//             style: TextStyle(fontSize: 12),
//           ),
//           dropdownColor: Colors.white,
//           elevation: 24,
//           icon: Icon(Icons.arrow_drop_down),
//           iconSize: 20.0,
//           isExpanded: true,
//           underline: SizedBox(),
//           value: selectedValue,
//           style: styles.ThemeText.textInputHeaderName,
//           onChanged: (value) {
//             onChanged(value);
//           },
//           items: dropDownList.map((value) {
//             return DropdownMenuItem(
//                 value: value,
//                 child: Text(
//                   value,
//                   style: TextStyle(fontSize: 12),
//                 ));
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

// class StoreDetail extends StatelessWidget {
//   final String storeName;
//   final String imageUrl;
//   final Function onImageTap;
//   final String storeEmail;
//   final bool active;

//   const StoreDetail(
//       {Key key,
//       this.storeName,
//       this.imageUrl,
//       this.storeEmail,
//       this.onImageTap,
//       this.active})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//         title: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//           Row(
//             children: [
//               imageUrl == null || imageUrl == " "
//                   ? Container(
//                       width: 50,
//                       height: 50,
//                       decoration: new BoxDecoration(
//                         color: Color(constants.mainTheme),
//                         shape: BoxShape.circle,
//                       ),
//                       alignment: Alignment.center,
//                       child: Text(storeName[0],
//                           style: styles.ThemeText.subTitleWhite))
//                   : SizedBox(
//                       child: InkWell(
//                         onTap: onImageTap,
//                         child: Container(
//                           width: 50,
//                           height: 50,
//                           child: CircleAvatar(
//                             backgroundImage: NetworkImage(imageUrl),
//                             backgroundColor: Colors.transparent,
//                           ),
//                         ),
//                       ),
//                     ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width * 0.46,
//                           child: Text(
//                             storeName == null ? " " : storeName,
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: styles.ThemeText.subTitleHead,
//                           ),
//                         ),
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width * 0.13,
//                         ),
//                         active
//                             ? SizedBox()
//                             : Text("Inactive",
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: styles.ThemeText.tileSubheaderNameRed),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width * 0.46,
//                       child: Text(storeEmail == null ? " " : storeEmail,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: styles.ThemeText.tileSubheaderName),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ]));
//   }
// }

// class TextNormalColored extends StatelessWidget {
//   final double amount;
//   final String type;
//   final String code;

//   const TextNormalColored(
//       {Key key, @required this.amount, @required this.type, this.code})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (amount == 0.0) {
//       return SizedBox(
//         width: MediaQuery.of(context).size.width * 0.25,
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: Text(code + " " + amount.toStringAsFixed(2),
//               style: styles.ThemeText.amountGrey),
//         ),
//       );
//     } else {
//       if (type == "CREDIT")
//         return SizedBox(
//           width: MediaQuery.of(context).size.width * 0.25,
//           child: Align(
//             alignment: Alignment.centerRight,
//             child: Text('(' + code + " " + amount.toStringAsFixed(2) + ")",
//                 style: styles.ThemeText.amountRed),
//           ),
//         );
//       else
//         return Align(
//           alignment: Alignment.centerRight,
//           child: Text(code + " " + amount.toStringAsFixed(2),
//               style: styles.ThemeText.amountGreen),
//         );
//     }
//   }
// }

// class TileTextNormalColored extends StatelessWidget {
//   final double amount;
//   final String type;
//   final String code;

//   const TileTextNormalColored(
//       {Key key, @required this.amount, @required this.type, this.code})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (amount == 0.0) {
//       return Text(code + " " + amount.toStringAsFixed(2),
//           maxLines: 1, style: styles.ThemeText.amountGrey);
//     } else {
//       if (type == "CREDIT")
//         return Text('(' + code + " " + amount.toStringAsFixed(2) + ")",
//             maxLines: 1, style: styles.ThemeText.amountRed);
//       else
//         return Text(code + " " + amount.toStringAsFixed(2),
//             maxLines: 1, style: styles.ThemeText.amountGreen);
//     }
//   }
// }

// class TileTextAmountColored extends StatelessWidget {
//   final double amount;
//   final String code;

//   const TileTextAmountColored({Key key, this.amount, this.code})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (amount.isNegative)
//       return Text('(' + code + (amount * -1).toStringAsFixed(2) + ")",
//           maxLines: 1, style: styles.ThemeText.amountRed);
//     else if (amount == 0.0)
//       return Text(code + " " + amount.toStringAsFixed(2),
//           maxLines: 1, style: styles.ThemeText.amountGrey);
//     else
//       return Text(code + " " + amount.toStringAsFixed(2),
//           maxLines: 1, style: styles.ThemeText.amountGreen);
//   }
// }

// class TextAmountColored extends StatelessWidget {
//   final double amount;
//   final String code;

//   const TextAmountColored({Key key, this.amount, this.code}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (amount.isNegative)
//       return Text('(' + code + " " + (amount * -1).toStringAsFixed(2) + ")",
//           maxLines: 1, style: styles.ThemeText.amountRed);
//     else if (amount == 0.0)
//       return Text(code + " " + amount.toStringAsFixed(2),
//           maxLines: 1, style: styles.ThemeText.amountGrey);
//     else
//       return Text(code + " " + amount.toStringAsFixed(2),
//           maxLines: 1, style: styles.ThemeText.amountGreen);
//   }
// }

// class TextAmountColoredRecon extends StatelessWidget {
//   final double amount;
//   final String code;

//   const TextAmountColoredRecon({Key key, this.amount, this.code})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (amount.isNegative)
//       return Text('(' + code + " " + (amount * -1).toStringAsFixed(2) + ")",
//           maxLines: 1, style: styles.ThemeText.amountRedBig);
//     else if (amount == 0.0)
//       return Text(code + " " + amount.toStringAsFixed(2),
//           maxLines: 1, style: styles.ThemeText.amountGreyBig);
//     else
//       return Text(code + " " + amount.toStringAsFixed(2),
//           maxLines: 1, style: styles.ThemeText.amountGreenBig);
//   }
// }

// class TextAmountWhite extends StatelessWidget {
//   final double amount;
//   final String code;

//   const TextAmountWhite({Key key, this.amount, this.code}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (amount.isNegative)
//       return Text('(' + code + " " + (amount * -1).toStringAsFixed(2) + ")",
//           style: styles.ThemeText.amountWhite);
//     else if (amount == 0.0)
//       return Text(code + " " + amount.toStringAsFixed(2),
//           style: styles.ThemeText.amountWhite);
//     else
//       return Text(code + " " + amount.toStringAsFixed(2),
//           style: styles.ThemeText.amountWhite);
//   }
// }

// class RunningBalanceColor extends StatelessWidget {
//   final double amount;
//   final String code;

//   const RunningBalanceColor({Key key, this.amount, this.code})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     if (amount.isNegative)
//       return Text('(' + code + " " + (amount * -1).toStringAsFixed(2) + ")",
//           style: styles.ThemeText.reconAmountGrey);
//     else if (amount == 0.0)
//       return Text(code + " " + amount.toStringAsFixed(2),
//           style: styles.ThemeText.reconAmountGrey);
//     else
//       return Text(code + " " + amount.toStringAsFixed(2),
//           style: styles.ThemeText.reconAmountGrey);
//   }
// }

// class ReconTileDateFormat extends StatelessWidget {
//   final String docDate;
//   const ReconTileDateFormat({Key key, this.docDate}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//         DateFormat("dd-MMM-yyyy").format(DateFormat("dd/MM/yyyy")
//             .parse(docDate.toString().substring(0, 10).replaceAll("-", "/"))),
//         style: styles.ThemeText.docTileHeaderName);
//   }
// }

// class TileDateFormat extends StatelessWidget {
//   final String docDate;
//   const TileDateFormat({Key key, this.docDate}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//         DateFormat("dd-MMM-yyyy").format(DateFormat("dd/MM/yyyy")
//             .parse(docDate.toString().substring(0, 10).replaceAll("-", "/"))),
//         maxLines: 1,
//         style: styles.ThemeText.docTileHeaderName);
//   }
// }

// class DateFormatView extends StatelessWidget {
//   final String docDate;
//   const DateFormatView({Key key, this.docDate}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//         DateFormat("dd-MMM-yyyy").format(DateFormat("dd/MM/yyyy")
//             .parse(docDate.toString().substring(0, 10).replaceAll("-", "/"))),
//         maxLines: 1,
//         style: styles.ThemeText.tileHeaderName);
//   }
// }

// class DashBoardLeadingIcon extends StatelessWidget {
//   final String imageUrl;
//   final Function() onTap;
//   final String storeName;

//   const DashBoardLeadingIcon(
//       {@required this.imageUrl,
//       @required this.onTap,
//       @required this.storeName});
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 10),
//         child: imageUrl != null
//             ? RoundContainer(
//                 imageUrl: imageUrl,
//               )
//             : Container(
//                 width: 38.0,
//                 height: 38.0,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black45,
//                       blurRadius: 4.0,
//                       spreadRadius: 0.0,
//                       offset: Offset(0.0, 2.0),
//                     )
//                   ],
//                   color: Color(constants.mainTheme),
//                   borderRadius: BorderRadius.all(Radius.circular(50.0)),
//                   border: Border.all(
//                     color: Colors.blue[500],
//                     width: 3.0,
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(storeName != null ? storeName[0] : "",
//                       style: styles.ThemeText.subTitleWhite),
//                 )),
//       ),
//     );
//   }
// }

// class DashBoardProfileIcon extends StatelessWidget {
//   final String imageUrl;
//   final Function() onTap;

//   const DashBoardProfileIcon({
//     @required this.imageUrl,
//     @required this.onTap,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 10),
//         child: imageUrl != null
//             ? RoundContainer(
//                 imageUrl: imageUrl,
//               )
//             : Container(
//                 width: 38.0,
//                 height: 38.0,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black45,
//                       blurRadius: 4.0,
//                       spreadRadius: 0.0,
//                       offset: Offset(0.0, 2.0),
//                     )
//                   ],
//                   color: const Color(0xff7c94b6),
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/man.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.all(Radius.circular(50.0)),
//                   border: Border.all(
//                     color: Colors.blue[500],
//                     width: 3.0,
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }

// class RoundContainer extends StatelessWidget {
//   final String imageUrl;

//   const RoundContainer({@required this.imageUrl});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 38.0,
//       height: 38.0,
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black45,
//             blurRadius: 4.0, // soften the shadow
//             spreadRadius: 0.0, //extend the shadow
//             offset: Offset(
//               0.0, // Move to right 10  horizontally
//               2.0, // Move to bottom 10 Vertically
//             ),
//           )
//         ],
//         color: const Color(0xff7c94b6),
//         image: DecorationImage(
//           image: NetworkImage(imageUrl),
//           fit: BoxFit.cover,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(50.0)),
//         border: Border.all(
//           color: Colors.blue[500],
//           width: 3.0,
//         ),
//       ),
//     );
//   }
// }

// class DocTypeLeadingIcon extends StatelessWidget {
//   final String docIcon;
//   final int gradient1;
//   final int gradient2;
//   const DocTypeLeadingIcon(
//       {Key key, this.docIcon, this.gradient1, this.gradient2})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 40,
//         height: 40,
//         decoration: new BoxDecoration(
//           gradient: new LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(gradient1),
//               Color(gradient2),
//             ],
//           ),
//           shape: BoxShape.circle,
//         ),
//         alignment: Alignment.center,
//         child: Text(docIcon, style: styles.ThemeText.subTitleWhite));
//   }
// }
