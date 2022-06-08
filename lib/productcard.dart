import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class card extends StatelessWidget {
  final int total = 60000;
  DateTime data = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          width: MediaQuery.of(context).size.width - 15 - 15 - 15,
          // height: 40,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(-1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 0),
                color: Colors.grey.shade300,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(DateFormat.yMMMMEEEEd().format(data),
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.black)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text("Selesai",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                ),
              ]),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Image(image: AssetImage("assets/alfa.png")),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alfamart / Alfamidi / Dan+Dan",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.black)),
                      Row(
                        children: [
                          Text("Total: ",
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey)),
                          Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(total),
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.deepOrange)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 15 - 15 - 15,
          height: 35,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(0, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(-1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 0,
                offset: const Offset(0, -7),
                color: Colors.white,
              ),
            ],
          ),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            color: Colors.grey.shade200,
            child: Text("Pilih",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: "AAD7DD".toColor())),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class card1 extends StatelessWidget {
  final int total = 60000;
  DateTime data = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          width: MediaQuery.of(context).size.width - 15 - 15 - 15,
          // height: 40,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(-1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 0),
                color: Colors.grey.shade300,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(DateFormat.yMMMMEEEEd().format(data),
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Text("Selesai",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white)),
                          ),
                        ]),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Image(image: AssetImage("assets/indo.png")),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Indomaret",
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            Row(
                              children: [
                                Text("Total: ",
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey)),
                                Text(
                                    NumberFormat.currency(
                                            locale: 'id',
                                            symbol: 'Rp ',
                                            decimalDigits: 0)
                                        .format(total),
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.deepOrange)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 15 - 15 - 15,
          height: 35,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(0, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(-1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 0,
                offset: const Offset(0, -7),
                color: Colors.white,
              ),
            ],
          ),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            color: Colors.grey.shade200,
            child: Text("Pilih",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: "AAD7DD".toColor())),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class card2 extends StatelessWidget {
  final int total = 60000;
  DateTime data = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          width: MediaQuery.of(context).size.width - 15 - 15 - 15,
          // height: 40,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(-1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 0),
                color: Colors.grey.shade300,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(DateFormat.yMMMMEEEEd().format(data),
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: Colors.black)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text("Selesai",
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.white)),
                ),
              ]),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.5),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Image(image: AssetImage("assets/circle.png")),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Circle K",
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.black)),
                      Row(
                        children: [
                          Text("Total: ",
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey)),
                          Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp ',
                                      decimalDigits: 0)
                                  .format(total),
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.deepOrange)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 15 - 15 - 15,
          height: 35,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(0, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(-1, 1),
                color: Colors.grey.shade300,
              ),
              BoxShadow(
                blurRadius: 0,
                offset: const Offset(0, -7),
                color: Colors.white,
              ),
            ],
          ),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            color: Colors.grey.shade200,
            child: Text("Pilih",
                style: GoogleFonts.poppins().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: "AAD7DD".toColor())),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
