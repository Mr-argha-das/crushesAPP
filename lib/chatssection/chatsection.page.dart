import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatSectionPage extends StatefulWidget {
  const ChatSectionPage({super.key});

  @override
  State<ChatSectionPage> createState() => _ChatSectionPageState();
}

class _ChatSectionPageState extends State<ChatSectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Active Crushs",
          style: GoogleFonts.glory(
              color: Colors.black, fontSize: 40.w, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120.h,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 75.w,
                          width: 75.w,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://d3e6ckxkrs5ntg.cloudfront.net/photos/images/25933927/original/resize:1043x600/crop:x117y0w765h574/hash:1465155026/mia-khalifa-drake-.png",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(500.w)),
                        ),
                        SizedBox(
                          height: 8.w,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Rohan",
                              style: GoogleFonts.nunito(
                                  color: Colors.black, fontSize: 18.w),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              height: 10.w,
                              width: 10.w,
                              decoration: BoxDecoration(
                                  color: Color(0xFFF65775),
                                  borderRadius: BorderRadius.circular(500.w)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.w, right: 16.w),
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 16.w,
              ),
              Text(
                "Messages",
                style: GoogleFonts.glory(
                    color: Colors.black,
                    fontSize: 40.w,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          ListView.builder(
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.only(left: 16.w, right: 16.w, top: 20.w),
                  child: UserThatChatsmeTabs(),
                );
              })
        ],
      ),
    );
  }
}

class UserThatChatsmeTabs extends StatelessWidget {
  const UserThatChatsmeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 65.w,
          width: 65.w,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: NetworkImage(
                    "https://d3e6ckxkrs5ntg.cloudfront.net/photos/images/25933927/original/resize:1043x600/crop:x117y0w765h574/hash:1465155026/mia-khalifa-drake-.png",
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(500.w)),
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Anika", style: GoogleFonts.nunito(color: Colors.black, fontSize: 25.w, fontWeight: FontWeight.w700),),
            Text("Oh i don't like fish 🙈 ", style: GoogleFonts.nunito(color: Color(0xFF9B9B9B), fontSize: 18.w, fontWeight: FontWeight.w500),),  
          ],
        )
      ],
    );
  }
}
