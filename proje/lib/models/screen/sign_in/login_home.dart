import 'package:flutter/material.dart';
import 'package:proje/home_page.dart';
import 'package:proje/sing_up/sing_up_screen.dart';
import 'package:proje/components/default_button.dart';
import 'package:proje/constants.dart';
import 'package:proje/size_config.dart';
import '../../../screens/forgot_password/forgot_password.dart';
import '../../../paketler/components/form_error.dart';

//burada ise iskeletin içini doldurduk

class LoginHome extends StatefulWidget {
  LoginHome({Key? key}) : super(key: key);
  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  final _formKey =GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors=[];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
    children: [
      SizedBox(height: orantiliEkranYuksekligi(30),),
      TextFormField(
        decoration: InputDecoration(
          labelText: "E-Mail",
          hintText: "E-Mail Adresinizi Giriniz...",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          //contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
          icon: Icon(Icons.mail_outline,color: Colors.purple.shade900,),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(32.0),
           gapPadding: 10,
        )
        ),
        onSaved:(newValue) => email= newValue!,
        onChanged:(value){
          if(value.isNotEmpty && errors.contains(kEmailNullError)){
            setState(() {
              errors.remove(kEmailNullError);
            });
          }
          else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
          return null;
        }, 
        validator: (value){
          if(value!.isEmpty && !errors.contains(kEmailNullError)){
            setState(() {
              errors.add(kEmailNullError);
            });
          }
          else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
            setState(() {
              errors.add(kInvalidEmailError);
            });
          }
          return null;
        },
      ),
      SizedBox(height: orantiliEkranYuksekligi(30),),
      TextFormField(
         obscureText: true, //şifeyi kapatır
         onSaved: (newValue) => password = newValue!,
         onChanged: (value){
          if(value.isNotEmpty && errors.contains(kPassNullError)){
            setState(() {
              errors.remove(kEmailNullError);
            });
          }
          else if(value.length >=8  && errors.contains(kShortPassError)){
            setState(() {
              errors.remove(kShortPassError);
            });
          }
          return null;
         },
         validator: (value){
          if(value!.isEmpty && !errors.contains(kPassNullError)){
            setState(() {
              errors.add(kEmailNullError);
            });
          }
          else if(value.length <8  && !errors.contains(kShortPassError)){
            setState(() {
              errors.add(kShortPassError);
            });
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Parola",
          hintText: "Parolanızı Giriniz...",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          //contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
          icon: Icon(Icons.lock_outline,color: Colors.purple.shade900,),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(32.0),
           gapPadding: 10,
        )
        )
      ),
      SizedBox(height: orantiliEkranYuksekligi(30),),
   Row(
      children: [
        Checkbox(
          value: remember, 
          activeColor: kPrimaryColor,
        onChanged: (value){
          setState(() {
            remember = value!;
          });
        }
        ),
        Text("Beni Hatırla"),
        Spacer(),
        Container(
                   child: GestureDetector(// ah kıyamam kendi interenti gi evettt dfjkdm // sorun nerde bu arada ileri tusuna bastıgımda direkt home pageye gidiyoa 
                   // kodda neresi tamam bana bırak dfkdj
                    onTap: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => ForgotPasswordScreen(),
                           ),
                         );
                       },
                child: Text("Şifremi Unuttum"),
              ),
            
          ),
        //Text("Şifremi Unuttum", style: TextStyle(decoration: TextDecoration.underline),)
      ],
    ),
      FormError(errors: errors),
      SizedBox(height: orantiliEkranYuksekligi(30),),
      DefaultButton(text: "Giriş Yap", 
      press: () {
        if(_formKey.currentState!.validate()){
          _formKey.currentState!.save();
        }
        // Navigator.pushNamed(context, HomePage().routeName);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
      ),
      SizedBox(height: orantiliEkranYuksekligi(20),),
      DefaultButton(
        text: "Kayıt Ol", 
        press: () => Navigator.pushNamed(context, SingUpScreen.routeName),
        
        )
      ],
      ),
    );
  }
}


  









/*class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}

Widget _LoginHome(BuildContext context) {

  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30),
    color: Colors.purple.shade900,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () => Navigator.pushNamed(context, SingUpScreen.routeName),
      child: Text(
        "Kayıt Ol",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
        ),
      ),
    ),
  );
  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10.0),
            emailField,
            SizedBox(height: 10.0),
            passwordField,
            SizedBox(height: 15.0),
            loginButton,
            SizedBox(height: 10.0),
            registerButton,
          ],
        ),
      ),
    ),
  );
}

*/