import 'package:crush_dating/onboarding/controller/stepform.controller.dart';
import 'package:crush_dating/onboarding/view/userprompt.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelecteQualitiesPage extends ConsumerStatefulWidget {
  const SelecteQualitiesPage({super.key});

  @override
  _SelecteQualitiesPageState createState() => _SelecteQualitiesPageState();
}

class _SelecteQualitiesPageState extends ConsumerState<SelecteQualitiesPage> {
  List<String> option = [
    "Travel enthusiast ✈️",
    "Music lover 🎶",
    "Bookworm 📚",
    "Fitness enthusiast 🏋️‍♀️",
    "Spiritual 🙏",
    "Down-to-earth 🌱",
    "Good listener 👂",
    "Communicative 💬",
    "Thoughtful 🎁",
    "Independent 🦸‍♀️",
    "Team player 🤝",
    "Goal-oriented 🎯",
    "Caring 🤗",
    "Playful 🎮",
    "Stylish 👗",
    "Adventurous �✨",
    "Kind-hearted ❤️",
    "Ambitious 💼🔥",
    "Funny 😂",
    "Creative 🎨",
    "Loyal 🤝",
    "Optimistic 🌞",
    "Supportive 🤗",
    "Honest 🗣️",
    "Passionate 💖",
    "Intelligent �",
    "Empathetic 🤲",
    "Family-oriented 👨‍👩‍👧‍👦",
    "Spontaneous 🎉",
    "Romantic 🌹",
    "Confident 💪",
    "Patient ⏳",
    "Open-minded 🌍",
    "Curious 🧐",
    "Charming 😏",
    "Athletic 🏃‍♂️",
    "Artistic 🖌️",
    "Tech-savvy 💻",
    "Animal lover 🐾",
    "Foodie 🍴",
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
                    "Tell us what you value in a \nperson",
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
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Wrap(
                spacing: 8.0, // Space between chips
                runSpacing: 8,
                children: option.map((option) {
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
            List<String> selectedOptionsList = selectedOptions.toList();

            ref
                .read(userStepFormProvider.notifier)
                .addQuality(selectedOptionsList);
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => UserPrompt()));
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
