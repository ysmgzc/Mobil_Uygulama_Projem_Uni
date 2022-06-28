import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proje/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String? error}) {
    return Row(
        children: [
          SvgPicture.asset("proje/assets/icons/Error.svg",
          height: orantiliEkranYuksekligi(14),
          width: orantiliEkranGenisligi(14),),
          SizedBox(width: orantiliEkranGenisligi(10),),
          Text(error!),
        ],
      );
  }
}