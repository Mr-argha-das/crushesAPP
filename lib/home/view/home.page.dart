import 'package:crush_dating/home/controller/home.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:intl/intl.dart';

class HomePage extends ConsumerStatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final CardSwiperController controller = CardSwiperController();
  @override
  Widget build(BuildContext context) {
    final userMatches = ref.watch(userMatchesProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.abc),
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Find your crush",
          style: GoogleFonts.glory(
            color: Colors.black,
            fontSize: 25.w,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ))
        ],
      ),
      body: userMatches.when(
          data: (snapshot) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      SizedBox(
                        height: 465.h,
                        width: 327.w,
                        child: CardSwiper(
                          controller: controller,
                          cardsCount: snapshot.data.length,
                          onSwipe: _onSwipe,
                          onUndo: _onUndo,
                          numberOfCardsDisplayed: 2,
                          backCardOffset: const Offset(0, 20),
                          padding: const EdgeInsets.all(0.0),
                          cardBuilder: (
                            context,
                            index,
                            horizontalThresholdPercentage,
                            verticalThresholdPercentage,
                          ) =>
                              Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 456.h,
                                width: 327.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          snapshot.data[index].profilePicture
                                              .split(",")[0]
                                              .trim(),
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                  height: 465.h,
                                  width: 327.w,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          stops: [
                                            0.0,
                                            0.5,
                                            1.0
                                          ],
                                          colors: [
                                            Colors.transparent,
                                            Colors.transparent,
                                            Colors.black,
                                          ]),
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.w,
                                                      right: 18.w,
                                                      bottom: 0.w),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "${snapshot.data[index].fullName},",
                                                        style:
                                                            GoogleFonts.glory(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 40.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Text(
                                                        "${calculateAge(snapshot.data[index].age)}",
                                                        style:
                                                            GoogleFonts.glory(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 30.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.w,
                                                      right: 18.w,
                                                      bottom: 18.w),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 3.w),
                                                        child: Icon(
                                                          Icons
                                                              .location_on_outlined,
                                                          color: Colors.white,
                                                          size: 15,
                                                        ),
                                                      ),
                                                      Text(
                                                        snapshot.data[index]
                                                            .locationCity,
                                                        style:
                                                            GoogleFonts.glory(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                      Text(
                                                        " . ",
                                                        style:
                                                            GoogleFonts.glory(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900),
                                                      ),
                                                      SizedBox(
                                                        width: 0.w,
                                                      ),
                                                      Text(
                                                        "20KM o you",
                                                        style:
                                                            GoogleFonts.glory(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18.w,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 50.h,
                                              width: 50.w,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.w)),
                                              child: Center(
                                                child: Text(
                                                  "🧐",
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          controller.swipe(CardSwiperDirection.left);
                        },
                        child: Container(
                          height: 60.w,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(500),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 0,
                                    blurRadius: 25,
                                    offset: Offset(4, 4))
                              ]),
                          child: Center(
                            child: Icon(
                              Icons.thumb_down_alt_outlined,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.swipe(CardSwiperDirection.right);
                        },
                        child: Container(
                          height: 60.w,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(500),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 0,
                                    blurRadius: 25,
                                    offset: Offset(4, 4))
                              ]),
                          child: Center(
                            child: Icon(
                              Icons.thumb_up_alt_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Spacer()
                    ],
                  )
                ],
              ),
            );
          },
          error: (error, stack) {
            return Center(
              child: Text(error.toString()),
            );
          },
          loading: () => Center(
                child: CircularProgressIndicator(),
              )),
    );
  }

  int calculateAge(String dobStr) {
    DateFormat format = DateFormat("dd/MM/yyyy");
    DateTime dob = format.parse(dobStr);
    DateTime today = DateTime.now();

    int age = today.year - dob.year;
    if (today.month < dob.month ||
        (today.month == dob.month && today.day < dob.day)) {
      age--;
    }

    return age;
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}

// class TinderClassWidget extends StatelessWidget {
//   final Color color;
//   const TinderClassWidget({super.key, required this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Swipable(
//       child: Container(
//         height: 465.h,
//         width: 327.w,
//         decoration: BoxDecoration(
//             color: color,
//             borderRadius: BorderRadius.circular(20.r)),

//       ),
//     );
//   }
// }
