import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:supercharged/supercharged.dart';
import 'package:intl/intl.dart';
import 'package:timuncare/productcard.dart';

class timuncare extends StatefulWidget {
  @override
  State<timuncare> createState() => _timuncareState();
}

class _timuncareState extends State<timuncare> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  String pagi1 = "03:00";
  String pagi2 = "11:00";
  String siang1 = "11:00";
  String siang2 = "15:00";
  String sore1 = "15:00";
  String sore2 = "18:00";
  String malam1 = "18:00";
  String malam2 = "03:00";
  String textwaktu = "";

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    DateTime dtpagi1 = DateTime.parse(formattedDate + ' ' + pagi1);
    DateTime dtpagi2 = DateTime.parse(formattedDate + ' ' + pagi2);
    DateTime dtsiang1 = DateTime.parse(formattedDate + ' ' + siang1);
    DateTime dtsiang2 = DateTime.parse(formattedDate + ' ' + siang2);
    DateTime dtsore1 = DateTime.parse(formattedDate + ' ' + sore1);
    DateTime dtsore2 = DateTime.parse(formattedDate + ' ' + sore2);
    DateTime dtmalam1 = DateTime.parse(formattedDate + ' ' + malam1);
    DateTime dtmalam2 = DateTime.parse(formattedDate + ' ' + malam2);

    int tspagi1 = dtpagi1.millisecondsSinceEpoch;
    int tspagi2 = dtpagi2.millisecondsSinceEpoch;
    int tssiang1 = dtsiang1.millisecondsSinceEpoch;
    int tssiang2 = dtsiang2.millisecondsSinceEpoch;
    int tssore1 = dtsore1.millisecondsSinceEpoch;
    int tssore2 = dtsore2.millisecondsSinceEpoch;
    int tsmalam1 = dtmalam1.millisecondsSinceEpoch;
    int tsmalam2 = dtmalam2.millisecondsSinceEpoch;

    int tsnow = DateTime.now().millisecondsSinceEpoch;

    if (tspagi1 < tsnow && tsnow < tspagi2) {
      textwaktu = 'Selamat Pagi';
    }

    if (tssiang1 < tsnow && tsnow < tssiang2) {
      textwaktu = 'Selamat Siang';
    }

    if (tssore1 < tsnow && tsnow < tssore2) {
      textwaktu = 'Selamat Sore';
    }

    if (tsmalam1 < tsnow && tsnow < tsmalam2) {
      textwaktu = 'Selamat Malam';
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.west_outlined, color: Colors.black),
            ),
            SizedBox(width: 10),
            Text("Timun Care",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    onPageChanged: (index, carouselReason) {
                      print(index);
                      setState(() {
                        _current = index;
                      });
                    },
                    height: 100,
                    viewportFraction: 1,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 10),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                  items: [1, 2, 3, 4].map(
                    (i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            color: Colors.grey.shade200,
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.report_problem_outlined,
                                    color: Colors.red),
                                SizedBox(width: 10),
                                Container(
                                  width: 272,
                                  child: Text(
                                      "Pada 25-31 Mei 2022, kuota Bebas Ongkir dengan min. Belanja Rp10 ribu untuk Silver 3, Gold 4, Platinum 10, dan Diamond 12. Kuota Bebas Ongkir dengan min. belanja Rp50 ribu bisa digunakan lagi pada 1 Juni 2022.",
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 10.50,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                      maxLines: 5),
                                ),
                                // SizedBox(width: 5),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                      child: Icon(Icons.close_outlined,
                                          color: Colors.black45)),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ).toList(),
                ),
                Container(
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [1, 2, 3, 4].asMap().entries.map(
                      (entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 6,
                            height: 6,
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(textwaktu,
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: "AAD7DD".toColor())),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Ada yang bisa kami bantu?",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width - 15 - 15 - 15,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      prefixIcon: Icon(Icons.search_outlined, size: 25),
                      hintText: "contoh: promosi berlangsung",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          offset: const Offset(1, 1),
                          color: Colors.grey.shade200,
                        ),
                        BoxShadow(
                          blurRadius: 2,
                          offset: const Offset(-1, -1),
                          color: Colors.grey.shade200,
                        ),
                      ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: MediaQuery.of(context).size.width - 15 - 15 - 15,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.email_outlined, color: Colors.black),
                            SizedBox(width: 5),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text("Pusat Bantuan",
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                        Icon(Icons.navigate_next_outlined, color: Colors.black),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Ada kendala dalam transaksimu?",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                      "Pilih transaksi berkendala dalam 1 bulan terakhir",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Colors.black)),
                ),
                SizedBox(height: 15),
                Container(
                  height: 128,
                  child: SingleChildScrollView(
                    clipBehavior: Clip.none,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        card(),
                        SizedBox(width: 20),
                        card1(),
                        SizedBox(width: 20),
                        card2(),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("Pilih Transaksi Lain",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: "AAD7DD".toColor())),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Yang sering ditanyakan",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("Cara Bayar di Tempat (COD)",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  thickness: 1,
                  height: 1,
                  indent: 20,
                  color: Colors.grey.shade200,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("Pertanyaan Seputar Bebas Ongkir)",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  thickness: 1,
                  height: 1,
                  indent: 20,
                  color: Colors.grey.shade200,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("Saya Belum Terima Pesanan",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  thickness: 1,
                  height: 1,
                  indent: 20,
                  color: Colors.grey.shade200,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("Transaksi Saya Dibatalkan oleh BoloxTimun",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  thickness: 1,
                  height: 1,
                  indent: 20,
                  color: Colors.grey.shade200,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text("Saya Ingin Isi Ulasan Prakerja",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  thickness: 1,
                  height: 1,
                  indent: 20,
                  color: Colors.grey.shade200,
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                        "Verifikasi Data Diri Otomatis Khusus Pembeli Alkohol & Elektrik",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black)),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Pilih topik sesuai kendala kamu",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image: AssetImage("assets/user.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 68,
                                  child: Text("Akun & Keamanan",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/shopping-bag.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 55,
                                  child: Text("Pesanan",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image:
                                          AssetImage("assets/debit-card.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  child: Text("Pembayaran",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/delivery-truck.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  child: Text("Pengiriman",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image: AssetImage(
                                          "assets/payment-method.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 68,
                                  child: Text("Pengembalian Dana",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image: AssetImage("assets/package.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 55,
                                  child: Text("Komplain Pesanan",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image:
                                          AssetImage("assets/promotions.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  child: Text("Promosi",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Image(
                                      image: AssetImage("assets/other.png")),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: 60,
                                  child: Text("Lainnya",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.black)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
