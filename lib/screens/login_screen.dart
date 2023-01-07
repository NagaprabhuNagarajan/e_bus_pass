import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_bus_pass/constants.dart';
import 'package:e_bus_pass/widgets/resusable_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../widgets/main_button_widget.dart';
import '../../widgets/loading_widgets.dart';
import '../../styles.dart' as styles;
import '../../constants.dart' as constants;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _onBackPressed() {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return AlertDialogBox(
            title: "Warning",
            content: "Do you want to close the app?",
            firstButton: "EXIT",
            secondButton: "CANCEL",
            firstAction: () {
              SystemNavigator.pop();
            },
            secondAction: () {
              Navigator.pop(context, false);
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: appGradientBgTheme,
        )),
        height: MediaQuery.of(context).size.height,
        child: WillPopScope(
          onWillPop: () => _onBackPressed(),
          child: Column(
            children: [
              const NoInternet(),
              Container(height: MediaQuery.of(context).size.height * 0.2),
              Container(
                margin: styles.ThemeText.basicBottomPadding,
                child: Image.asset("assets/images/ticket.png",
                    width: 180, height: 180, fit: BoxFit.fill),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.56,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(left: 20, top: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: styles.ThemeText.basicTopBottomPadding,
                                child: const Text(
                                  "Welcome",
                                  style: styles.ThemeText.appBarTitle,
                                )),
                            Container(
                                margin: styles.ThemeText.basicBottomPadding,
                                child: const Text("Sign In to continue",
                                    style: styles.ThemeText.subTitle)),
                          ],
                        )),
                    const LoginFormField(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginFormField extends StatefulWidget {
  const LoginFormField({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormFieldState createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  bool? isLoading = false;
  String? email;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFieldContainer(
            child: TextFormField(
                maxLength: 50,
                keyboardType: TextInputType.emailAddress,
                style: styles.ThemeText.textInputHeaderName,
                decoration: const InputDecoration(
                  labelText: 'Email Id',
                  labelStyle: styles.ThemeText.labelTextStyleblack,
                  hintStyle: styles.ThemeText.tileSubheaderNameblack,
                  counterText: "",
                ),
                validator: (value) {
                  String pattern =
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                  RegExp regExp = RegExp(pattern);
                  if (value!.isEmpty) {
                    return 'Enter Email Id';
                  } else {
                    if (!regExp.hasMatch(value)) {
                      return 'Please provide a proper Email Id';
                    } else {
                      setState(() {
                        value = value!.toLowerCase();
                        email = value!.replaceAll(' ', '');
                      });
                    }
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  if (_formKey.currentState!.validate()) {
                    // verifyEmail();
                  }
                }),
          ),
          isLoading!
              ? const LoadingWidgets()
              : MainButton(
                  buttonText: 'Next',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // verifyEmail();
                    }
                  },
                ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
