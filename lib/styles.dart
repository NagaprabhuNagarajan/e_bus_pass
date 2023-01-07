import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import './constants.dart' as Constants;

abstract class ThemeText {
  static const String regularFont = Constants.regular;

  static const String boldFont = Constants.bold;

  static const String light = Constants.light;

  static const String medium = Constants.medium;

  static const TextStyle bigWhite = TextStyle(
      fontSize: Constants.overdueAmount,
      fontFamily: boldFont,
      color: Colors.white);

  static const TextStyle smallWhite = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: boldFont,
      color: Colors.white);
  static const TextStyle boldWhite = TextStyle(
      fontSize: Constants.listSupplierHead,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.8,
      fontFamily: boldFont,
      color: Colors.white);

  static const TextStyle boldRed = TextStyle(
      fontSize: Constants.listSupplierHead,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.8,
      fontFamily: regularFont,
      color: Colors.red);

  static const TextStyle minWhite = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      color: Colors.white);

  static const TextStyle regularWhite = TextStyle(
      fontSize: Constants.listSupplierHead,
      fontFamily: regularFont,
      color: Colors.white);

  static const TextStyle appBarTitle = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: boldFont,
      fontWeight: FontWeight.w400,
      color: Colors.black);
  static const TextStyle termandconditionTitle = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: regularFont,
      fontWeight: FontWeight.w700,
      color: Colors.black);
  static const TextStyle appBarTitleWhite = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: boldFont,
      fontWeight: FontWeight.w500,
      color: Colors.white);
  static const TextStyle drawerHeaderWhiteBold = TextStyle(
      fontSize: Constants.listName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w600,
      color: Colors.white);
  static const TextStyle drawerHeaderWhite = TextStyle(
      fontFamily: regularFont,
      fontWeight: FontWeight.w300,
      color: Colors.white);

  static const TextStyle logoText = TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: "Montserrat");

  static const TextStyle headerNameGrey =
      TextStyle(fontSize: 18, fontFamily: boldFont, color: Colors.grey);

  static const TextStyle tileHeaderName = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.black);

  static const TextStyle tileHeaderNameBold = TextStyle(
      fontSize: Constants.listName,
      fontFamily: Constants.bold,
      color: Colors.black);

  static const TextStyle tileHeaderNameBlue = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.blue);

  static const TextStyle lockeDate = TextStyle(
      fontSize: Constants.listName, fontFamily: boldFont, color: Colors.black);

  static const TextStyle emailHeadBlack = TextStyle(
      fontSize: Constants.listName,
      fontFamily: Constants.bold,
      color: Colors.black);

  static const TextStyle docTileHeaderName = TextStyle(
      fontSize: Constants.docListName, fontFamily: medium, color: Colors.black);

  static const TextStyle tabListNameGrey =
      TextStyle(fontSize: 13, fontFamily: medium, color: Colors.grey);

  static const TextStyle tabListNameBlue = TextStyle(
      fontSize: 13, fontFamily: medium, color: Color(Constants.mainTheme));

  static const TextStyle tabListNameWhite =
      TextStyle(fontSize: 14, fontFamily: medium, color: Colors.white);

  static const TextStyle balanceDetailName =
      TextStyle(fontSize: 15, fontFamily: medium, color: Colors.black);

  static const TextStyle aboutHeaderName = TextStyle(
      fontSize: Constants.listName,
      fontFamily: boldFont,
      color: Color(Constants.mainTheme));

  static const TextStyle tileSubheaderName = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      color: Colors.grey);

  static const TextStyle tileSubheaderNameBlue = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      color: Color(Constants.mainTheme));

  static const TextStyle tileSubheaderNameblack = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      color: Colors.black45);

  static const TextStyle tileSubheaderTime =
      TextStyle(fontSize: 12, fontFamily: regularFont, color: Colors.black);

  static const TextStyle tileSubheaderNameBlack = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.black);

  static const TextStyle tileSubheaderNameGreen = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.green);

  static const TextStyle tileSubheaderNameRed = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.red);

  static const TextStyle supplierHeaderName = TextStyle(
      fontSize: Constants.listSupplierHead,
      fontFamily: medium,
      color: Colors.black);

  static TextStyle supplierSubheaderName = TextStyle(
      decoration: TextDecoration.underline,
      decorationThickness: 0.7,
      decorationColor: Color(Constants.mainTheme),
      fontSize: Constants.listSupplierName,
      fontFamily: regularFont,
      color: Colors.grey.shade800);

  static TextStyle reconLink = TextStyle(
      decoration: TextDecoration.underline,
      decorationThickness: 0.7,
      // decorationColor: Color(Constants.mainTheme),
      fontSize: Constants.listSupplierName,
      fontFamily: boldFont,
      color: Colors.white);

  static TextStyle supplierLink = TextStyle(
      decoration: TextDecoration.underline,
      decorationThickness: 0.7,
      decorationColor: Color(Constants.mainTheme),
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.grey.shade800);
  static TextStyle supplierLinkBig = TextStyle(
      decoration: TextDecoration.underline,
      decorationThickness: 0.7,
      decorationColor: Color(Constants.mainTheme),
      fontSize: Constants.menuTitleSize,
      fontFamily: regularFont,
      color: Colors.grey.shade800);

  static const TextStyle reconAmountGrey = TextStyle(
      fontSize: Constants.listAmount,
      fontFamily: regularFont,
      color: Colors.grey);

  static const TextStyle reconAmountWhite = TextStyle(
      fontSize: Constants.listAmount,
      fontFamily: regularFont,
      color: Color(Constants.pageThemeColor));

  static const TextStyle amountRed = TextStyle(
      fontSize: Constants.listAmount,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.red);

  static const TextStyle amountRedBig = TextStyle(
      fontSize: 15,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.red);

  static const TextStyle overduebig = TextStyle(
      fontSize: Constants.overdueAmount,
      fontFamily: regularFont,
      fontWeight: FontWeight.w300,
      color: Colors.white);

  static const TextStyle amountGreen = TextStyle(
      fontSize: Constants.listAmount,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.green);

  static const TextStyle amountGreenBig = TextStyle(
      fontSize: 15,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.green);

  static const TextStyle paymentAmount = TextStyle(
      fontSize: Constants.listAmount,
      decoration: TextDecoration.underline,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.green);

  static const TextStyle amountGrey = TextStyle(
      fontSize: Constants.listAmount,
      fontFamily: regularFont,
      color: Colors.grey);

  static const TextStyle amountGreyBig =
      TextStyle(fontSize: 15, fontFamily: regularFont, color: Colors.grey);

  static const TextStyle amountWhite = TextStyle(
      fontSize: 17,
      fontFamily: regularFont,
      fontWeight: FontWeight.w500,
      color: Colors.white);

  static const TextStyle dashboardSupplier = TextStyle(
      fontSize: Constants.listSubName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w900,
      color: Colors.grey);

  static const TextStyle termAndConditionText = TextStyle(
      fontSize: 13,
      fontFamily: regularFont,
      decoration: TextDecoration.underline,
      color: Color(Constants.mainTheme));

  static const TextStyle textInputHeaderName = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle minblack = TextStyle(
      fontSize: Constants.listAmount,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle dateTypeText = TextStyle(
      fontSize: 11,
      fontFamily: regularFont,
      //fontWeight: FontWeight.w900,
      color: Colors.black);

  static const TextStyle totalAmountRedBig = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: boldFont,
      // fontWeight: FontWeight.w900,
      color: Colors.red);

  static const TextStyle textInputGreen = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.green);

  static const TextStyle textInputRed = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.red);

  static const TextStyle listSubTextRed =
      TextStyle(fontSize: 10, fontFamily: regularFont, color: Colors.red);

  static const TextStyle textInputHeaderNameDrawer = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.white);

  static const TextStyle labelTextStyle = TextStyle(
      fontSize: Constants.labelTextInputSize, fontFamily: regularFont);

  static const TextStyle helpQuestion = TextStyle(
      fontSize: Constants.labelTextInputSize,
      fontFamily: boldFont,
      height: 1.4);

  static const TextStyle helpAnswer = TextStyle(
      fontSize: Constants.labelTextInputSize,
      fontFamily: regularFont,
      color: Colors.grey,
      height: 1.4);

  static const TextStyle labelTextStyleblack = TextStyle(
      fontSize: Constants.labelTextInputSize,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle subTitle = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.black);

  static const TextStyle subTitleHead = TextStyle(
      fontSize: Constants.titleHead, fontFamily: medium, color: Colors.black);

  static const TextStyle textInputStyle = TextStyle(
      fontSize: Constants.textInputFontSize,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle documentlisttile = TextStyle(
      fontSize: Constants.listSupplierName,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle textInputHeaderNameRgular = TextStyle(
      fontSize: Constants.textInputFontSize,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle menuTitleStyle = TextStyle(
      fontSize: Constants.menuTitleSize,
      fontFamily: medium,
      color: Colors.black);

  static const TextStyle popUpListStyle =
      TextStyle(fontSize: 17, fontFamily: regularFont, color: Colors.black);

  static const TextStyle popUpListBoldBlueStyle = TextStyle(
      fontSize: 17, fontFamily: boldFont, color: Color(Constants.appBarTheme));

  static const TextStyle textInputHeaderName2 = TextStyle(
      fontSize: Constants.listName,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle baseFontWhiteBoldStyle =
      TextStyle(fontSize: 15, fontFamily: light, color: Colors.white);

  static const TextStyle aboutbaseFontBlueBoldStyle = TextStyle(
      fontSize: 16, fontFamily: boldFont, color: Color(Constants.mainTheme));

  static const TextStyle baseFontBlueBoldStyle = TextStyle(
      fontSize: 15, fontFamily: medium, color: Color(Constants.mainTheme));

  static const TextStyle bigGreenStyle =
      TextStyle(fontSize: 16, fontFamily: medium, color: Colors.green);

  static const TextStyle bigRedStyle =
      TextStyle(fontSize: 16, fontFamily: medium, color: Colors.red);

  static const TextStyle bigGreyStyle =
      TextStyle(fontSize: 16, fontFamily: medium, color: Colors.grey);

  static const TextStyle minGreenStyle =
      TextStyle(fontSize: 8, fontFamily: medium, color: Colors.green);
  static const TextStyle mediumGreenStyle =
      TextStyle(fontSize: 11, fontFamily: medium, color: Colors.green);

  static const TextStyle minRedStyle =
      TextStyle(fontSize: 8, fontFamily: medium, color: Colors.red);

  static const TextStyle mediumRedStyle =
      TextStyle(fontSize: 13, fontFamily: medium, color: Colors.red);

  static const TextStyle minGreyStyle =
      TextStyle(fontSize: 8, fontFamily: medium, color: Colors.grey);
  static const TextStyle mediumGreyStyle =
      TextStyle(fontSize: 13, fontFamily: medium, color: Colors.grey);

  static TextStyle baseFontGreyBoldStyle =
      TextStyle(fontSize: 15, fontFamily: medium, color: Colors.grey[600]);

  static const TextStyle baseSmallFontWhiteStyle =
      TextStyle(fontSize: 12, fontFamily: regularFont, color: Colors.white);

  static const TextStyle tinyFontGreyStyle =
      TextStyle(fontSize: 10, fontFamily: regularFont, color: Colors.grey);

  static const TextStyle tinyFontBlueStyle = TextStyle(
      fontSize: 8, fontFamily: regularFont, color: Color(Constants.mainTheme));

  static const TextStyle clickableTextStyles = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w300,
      color: Color(Constants.mainTheme));

  static const TextStyle clickableTextStylesBlack = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w300,
      color: Colors.black);

  static const TextStyle buttonBold = TextStyle(
      fontSize: Constants.listName, fontFamily: boldFont, color: Colors.white);

  static const TextStyle buttonBoldBlack = TextStyle(
      fontSize: Constants.listName, fontFamily: boldFont, color: Colors.black);
  static const TextStyle buttonThemeBlack = TextStyle(
      fontSize: Constants.listName,
      fontFamily: boldFont,
      color: Color(Constants.mainTheme));

  static const TextStyle mediumblack = TextStyle(
      fontSize: Constants.listSupplierName,
      fontFamily: regularFont,
      color: Colors.black);

  static const TextStyle subTitleWhite = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: regularFont,
      color: Colors.white);

  static const TextStyle subTitleBlue = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: regularFont,
      color: Color(Constants.mainTheme));

  static const TextStyle textInputHeaderGrey = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.grey);

  static const TextStyle textInputHeaderNameWhite = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.white);

  static const TextStyle textInputHeaderName2White = TextStyle(
      fontSize: Constants.listName,
      fontFamily: regularFont,
      color: Colors.white);

  static const TextStyle textInputHeaderNameBlue = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Color(0xFF0077ED));

  static const TextStyle textInputHeaderNameGrey = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      fontWeight: FontWeight.w900,
      color: Colors.grey);

  static const TextStyle textInputHeaderNameRed = TextStyle(
      fontSize: Constants.textSubName,
      fontFamily: regularFont,
      color: Colors.red);

  static const TextStyle tabBarFont = TextStyle(
    fontSize: Constants.listName,
    fontFamily: light,
  );

  static const TextStyle tileTitle = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.black);

  static const TextStyle invoicegrey = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.red);

  static const TextStyle paymentgreen = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.green);

  static const TextStyle discountpurple = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.purple);
  static const TextStyle creditblue = TextStyle(
      fontSize: Constants.listName, fontFamily: medium, color: Colors.blue);

  static const TextStyle amountGreenTitle = TextStyle(
      fontSize: Constants.titleFontSize,
      fontFamily: boldFont,
      color: Colors.green);

  static const EdgeInsets basicTopBottomPadding =
      const EdgeInsets.only(top: 5, bottom: 5);

  static const EdgeInsets basicBottomPadding = const EdgeInsets.only(bottom: 5);

  static const EdgeInsets DefautlLeftRightPadding =
      const EdgeInsets.only(left: 10, right: 10);
}
