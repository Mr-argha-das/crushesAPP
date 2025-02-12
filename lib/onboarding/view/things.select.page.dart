import 'package:crush_dating/onboarding/view/qualities.page.dart';
import 'package:crush_dating/onboarding/view/select.gender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThingsSelectPage extends StatefulWidget {
  const ThingsSelectPage({super.key});

  @override
  State<ThingsSelectPage> createState() => _ThingsSelectPageState();
}

class _ThingsSelectPageState extends State<ThingsSelectPage> {
  List<String> options = [
    "Traveling 🌍✈️",
    "Cooking 🍳👨‍🍳",
    "Fitness & Gym 🏋️‍♀️💪",
    "Yoga & Meditation 🧘‍♀️☮️",
    "Photography 📸",
    "Music & Concerts �🎤",
    "Dancing 💃🕺",
    "Movies & Netflix 🎬🍿",
    "Gaming 🎮🕹️",
    "Reading Books 📚",
    "Art & Painting 🎨🖌️",
    "Hiking & Nature 🥾🌲",
    "Foodie Adventures 🍕🍣",
    "Tech & Gadgets 💻📱",
    "Fashion & Style 👗👠",
    "Animals & Pets 🐶🐱",
    "Volunteering & Charity 🤝❤️",
    "Wine Tasting 🍷",
    "Coffee Lover ☕",
    "Sports Fan ⚽🏀",
    "Writing & Blogging ✍️📝",
    "DIY Projects 🔨🛠️",
    "Astronomy & Stargazing 🌌🔭",
    "Camping & Bonfires 🏕️🔥",
    "Sushi Lover 🍣",
    "Craft Beer Enthusiast 🍺",
    "Podcasts & Audiobooks 🎧📖",
    "Cycling 🚴‍♂️",
    "Surfing & Beach Life 🏄‍♀️🌊",
    "Partying & Nightlife 🎉🍹",
    "Spiritual Practices 🙏",
    "Learning New Skills �",
    "Board Games & Puzzles 🎲🧩",
    "Car Enthusiast 🚗💨",
    "Minimalism & Sustainability 🌱♻️",
    "Fashion Design 👗✂️",
    "History Buff 🏛️📜",
    "Sci-Fi & Fantasy Lover 🚀🧙‍♂️",
    "Comedy & Stand-Up 🎤😂",
    "Thrill Seeker & Adventure Junkie 🪂🏔️"
  ];

  // Set to store selected options
  Set<String> selectedOptions = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Choose 5 things you’re really \ninto",
                    style: GoogleFonts.glory(
                        color: Colors.black,
                        fontSize: 32.w,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Wrap(
                spacing: 8.0, // Space between chips
                runSpacing: 8,
                children: options.map((option) {
                  return FilterChip(
                    label: Text(
                      option,
                      style: GoogleFonts.glory(
                          color: Colors.black, fontSize: 18.w),
                    ),
                    selected: selectedOptions.contains(option),
                    onSelected: (isSelected) {
                      setState(() {
                        if (isSelected) {
                          selectedOptions.add(option);
                        } else {
                          selectedOptions.remove(option);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 100.h,
            )
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => SelecteQualitiesPage()));
          },
          child: Container(
            height: 50.h,
            width: 414.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color(0xFF1C1B1F)),
            child: Center(
              child: Text(
                "Next",
                style: GoogleFonts.inter(color: Colors.white, fontSize: 16.w),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
