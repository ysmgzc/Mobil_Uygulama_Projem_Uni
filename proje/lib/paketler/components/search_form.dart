import 'package:flutter/material.dart';
import 'package:proje/constants.dart';

//anasayfadaki arama motoru

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        //onChanged: (value) {},
        //  controller: editingController,
        decoration: InputDecoration(
            hintText: "Ara",
            filled: true,
            fillColor: Colors.grey.shade200,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            //   labelText: "Ara",
            //   hintText: "Ara",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(Icons.search),
            ),
            // border: OutlineInputBorder(
            //  borderRadius: BorderRadius.circular(32.0),
            // ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              child: SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                    ),
                  ),
                  child: Icon(
                    Icons.view_list,
                    color: Colors.purple.shade900,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
);
