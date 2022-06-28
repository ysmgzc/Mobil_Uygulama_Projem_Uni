import 'package:flutter/material.dart';

class Menu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 200,
            height: 130,
            color: Colors.white,
            child: Image.asset('assets/fotolar/menu2.png')
            //child: Image.asset('assets/fotolar/menu2-removebg-preview-removebg-preview.png')
          ),
          /* Image(
            color: Colors.white,
            width: 300,
            height: 200,
            image: AssetImage('fotolar/menu2.png'),
          ),*/
          Expanded(
            //genişletilmiş
            child: ListView(
              children: <Widget>[
                ExpansionTile(
                  leading: Icon(
                    Icons.woman,
                    color: Colors.purple.shade900,
                  ),
                  title: Text(
                    "KADIN",
                    //style: TextStyle(color: Colors.black87),
                  ),
                  children: [
                    //kadının alt elemanları
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Yeni Gelenler'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Üst Giyim'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Alt Giyim'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Elbise'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('İç Giyim'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Ayakkabı'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Aksesuar'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Kozmetik & Kişisel Bakım'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 3.0,
                  color: Colors.grey.shade400,
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.man,
                    color: Colors.purple.shade900,
                  ),
                  title: Text("ERKEK"),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Yeni Gelenler'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Üst Giyim'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      //alt elemanlar
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Alt Giyim'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('İç Giyim'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Ayakkabı'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Saat & Aksesuar'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Kişisel Bakım'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                Divider(
                  height: 3.0,
                  color: Colors.grey.shade400,
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.child_care,
                    color: Colors.purple.shade900,
                  ),
                  title: Text("ÇOCUK"),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Kız Çocuk'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Erkek Çocuk'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                Divider(
                  height: 3.0,
                  color: Colors.grey.shade400,
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.child_friendly,
                    color: Colors.purple.shade900,
                  ),
                  title: Text("BEBEK"),
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Kız Bebek'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Erkek Bebek'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                Divider(
                  height: 3.0,
                  color: Colors.grey.shade400,
                ),
                ExpansionTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.purple.shade900,
                  ),
                  title: Text("EV & YAŞAM"),
                  children: [
                    //Ev ve yaşamın alt menüleri
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Yeni Gelenler'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Yatak Odası'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Banyo'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Mutfak'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0), //margin ile containeri sola kaydırır
                      //padding olsaydı sadece list title kısmını sola kaydırırdı
                      child: ListTile(
                        leading: Icon(Icons.keyboard_arrow_right),
                        title: Text('Oturma Odası'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                Divider(
                  height: 3.0,
                  color: Colors.grey.shade400,
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.purple.shade900,
                  ),
                  title: Text('Giriş Yap / Kaydol'),
                  //  trailing: Icon(Icons.join_right_outlined),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.purple.shade900,
                  ),
                  title: Text('İletişim'),
                  // trailing: Icon(Icons.join_right_outlined),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.purple.shade900,
                  ),
                  title: Text('Yardım'),
                  // trailing: Icon(Icons.join_right_outlined),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
