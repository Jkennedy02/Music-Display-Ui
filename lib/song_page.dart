import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/mus_box.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player/musik_pik.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                const Gap(10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: MusBox(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text(
                      "P  L  A  Y    L  I  S  T",
                      style: GoogleFonts.robotoFlex(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: MusBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                MusikPik(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/images/456.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Big shots",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                              Text(
                                "Deliver me from sin",
                                style: GoogleFonts.roboto(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            "assets/icons/heart.svg",
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "0.00",
                      style: GoogleFonts.robotoFlex(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    SvgPicture.asset("assets/icons/shuffle.svg"),
                    SvgPicture.asset("assets/icons/repeat.svg"),
                    Text(
                      "4.22",
                      style: GoogleFonts.robotoFlex(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ],
                ),
                const Gap(30),
                LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.7,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
                const Gap(30),
                SizedBox(
                  height: 70,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: MusBox(
                            child: SvgPicture.asset("assets/icons/forward.svg"),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: MusBox(
                              child: SvgPicture.asset(
                                "assets/icons/play.svg",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: MusBox(
                            child: SvgPicture.asset("assets/icons/rewind.svg"),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
