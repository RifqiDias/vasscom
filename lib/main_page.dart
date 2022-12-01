import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/profile_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final listChoices = <ItemChoice>[
    ItemChoice(1, 'All Product'),
    ItemChoice(2, 'Layanan Kesehatan'),
    ItemChoice(3, 'Alat Kesehatan'),
  ];

  final tipeKesehatan = <ItemChoice>[
    ItemChoice(1, 'Satuan'),
    ItemChoice(2, 'Paket Pemetiksaan'),
  ];
  var idSelected = 0;
  var tkSelected = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.shopping_cart,
              color: const Color(0xff002060),
              size: 30.sp,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Icon(
            Icons.notifications,
            color: const Color(0xff002060),
            size: 30.sp,
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            child: Icon(
              Icons.menu_sharp,
              color: const Color(0xff002060),
              size: 30.sp,
            ),
          ),
        ),
      ),
      drawerScrimColor: Color(0xFF002060).withOpacity(0.8),
      endDrawer: Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Drawer(
            backgroundColor: Colors.transparent,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(top: 80.w, left: 32.w, right: 32.w),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 40.w, height: 40.w, child: Image.asset("images/img_avatar.png")),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Angga Praja",
                                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Color(0xff002060)),
                                ),
                                SizedBox(
                                  height: 4.w,
                                ),
                                Text(
                                  "Membership BBLK",
                                  style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.8)),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.w,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ProfilePage()),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "Profil Saya",
                                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.8)),
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 16.sp,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22.w,
                        ),
                        Row(
                          children: [
                            Text(
                              "Pengaturan",
                              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.8)),
                            ),
                            SizedBox(
                              width: 46.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 16.sp,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.w,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 131.w,
                              height: 28.w,
                              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(28.w)),
                              child: Center(
                                child: Text("Logout", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ikuti kami di",
                              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, color: Color(0xff002060)),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            SizedBox(width: 12.w, height: 12.w, child: Image.asset("images/ic_fb.png")),
                            SizedBox(
                              width: 6.w,
                            ),
                            SizedBox(width: 12.w, height: 12.w, child: Image.asset("images/ic_ig.png")),
                            SizedBox(
                              width: 6.w,
                            ),
                            SizedBox(width: 12.w, height: 12.w, child: Image.asset("images/ic_twitter.png")),
                          ],
                        ),
                        SizedBox(
                          height: 200.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "FAQ",
                              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.8)),
                            ),
                            Text(
                              "Terms and Conditions",
                              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.8)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.w, left: 20.w),
                    child: SizedBox(
                        width: 28.w,
                        height: 28.w,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset("images/ic_close.png"))),
                  ),
                )
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.h),
              width: MediaQuery.of(context).size.width,
              height: 131.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/content1.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 131.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/content2.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 131.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/content3.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.filter_alt,
                      size: 25.sp,
                      color: const Color(0xff002060),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 100.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 1,
                          offset: const Offset(0, 6), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    height: 40.w,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 10.w), hintText: "Search", border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Icon(
                            Icons.search,
                            color: const Color(0xff002060),
                            size: 25.sp,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                itemCount: 1,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  children: listChoices
                      .map((e) => ChoiceChip(
                            elevation: 10,
                            backgroundColor: Colors.white,
                            selectedColor: idSelected != e.id ? Colors.white : const Color(0xff002060),
                            label: Text(e.label),
                            labelStyle:
                                TextStyle(color: idSelected == e.id ? Colors.white : const Color(0xff002060), fontSize: 12.sp, fontWeight: FontWeight.bold),
                            selected: idSelected == e.id,
                            autofocus: true,
                            onSelected: (_) {
                              setState(() => idSelected = e.id);
                            },
                          ))
                      .toList(),
                ),
              ),
            ),
            SizedBox(
              height: 200.h,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10),
                  height: 200.h,
                  width: 200,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("images/content_chips1.png"))),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Pilih Tipe Layanan Kesehatan Anda",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25.w),
              child: Wrap(
                direction: Axis.horizontal,
                children: tipeKesehatan
                    .map((e) => ChoiceChip(
                          elevation: 10,
                          backgroundColor: Colors.white,
                          selectedColor: tkSelected != e.id ? Colors.white : const Color(0xff00D9D5),
                          label: Text(e.label),
                          labelStyle: TextStyle(
                              color: tkSelected == e.id ? const Color(0xff002060) : const Color(0xff002060), fontSize: 12.sp, fontWeight: FontWeight.bold),
                          selected: tkSelected == e.id,
                          autofocus: true,
                          onSelected: (_) {
                            setState(() => tkSelected = e.id);
                          },
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 300.h,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10),
                  height: 300.h,
                  width: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "images/content_chips2.png",
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            Container(
              height: 90.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/bottom.png',
                      ),
                      fit: BoxFit.fitWidth)),
            ),
            SizedBox(
              height: 40.h,
            )
          ],
        ),
      ),
    );
  }
}

class ItemChoice {
  final int id;
  final String label;

  ItemChoice(this.id, this.label);
}
