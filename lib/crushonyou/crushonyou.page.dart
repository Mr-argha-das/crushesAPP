import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:google_fonts/google_fonts.dart";

class CrushonYouPage extends StatefulWidget {
  const CrushonYouPage({super.key});

  @override
  State<CrushonYouPage> createState() => _CrushonYouPageState();
}

class _CrushonYouPageState extends State<CrushonYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              
              border: Border.all(color:Color(0xFFFFFFFF) , width: 1, ),
              borderRadius: BorderRadius.circular(500.w)
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
          ),
        ),
        backgroundColor: Color(0xFF090909),
        title: Text("Crush on you", style: GoogleFonts.glory(
              color: Colors.white, fontSize: 40.w, fontWeight: FontWeight.w600),),
      ),
    );
  }
}
