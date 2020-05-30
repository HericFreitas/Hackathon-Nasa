import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hackathonnasa/app/shared/CustomInputField.dart';
import 'package:hackathonnasa/app/shared/PasswordInputField.dart';
import 'package:hackathonnasa/app/shared/SubmitButtom.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: Container(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Observer(
                  builder: (_) {
                    return CustomInputField(
                      label: 'Email',
                    );
                  },
                ),
                SizedBox(height: 10),
                Observer(
                  builder: (_) {
                    return PasswordInputField(
                      forgetPassword: true,
                    );
                  },
                ),
                SizedBox(height: 20),
                SubmitButton(
                  firstColor: Colors.black,
                  secondColor: Colors.black,
                  onTap: null,
                  label: "Login",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}