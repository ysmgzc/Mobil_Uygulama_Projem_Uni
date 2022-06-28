import 'package:flutter/material.dart';
import 'package:proje/screens/forgot_password/no_account_text.dart';
import '../../../constants.dart';
import '../../components/default_button.dart';
import '../../paketler/components/form_error.dart';
import '../../size_config.dart';

//sifremi unuttum butonuna bastığımızda bizi yönlendirdiği sifremi unuttum sayfası

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: orantiliEkranGenisligi(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Şifremi Unuttum",
                style: TextStyle(
                  fontSize: orantiliEkranGenisligi(28),
                  color: Colors.purple.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Lütfen E-Mail adresinizi giriniz. Hesabınıza giriş yapabilmeniz için size bir bağlantı göndereceğiz",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "E-Mail",
              hintText: "E- Mail adresinizi giriniz...",
              floatingLabelBehavior: FloatingLabelBehavior.always,
               icon: Icon(Icons.mail_outline,color: Colors.purple.shade900,),
            ),
          ),
          SizedBox(height: orantiliEkranYuksekligi(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          DefaultButton(
            text: "İleri",
            press: () {
              if (_formKey.currentState!.validate()) {
                
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}