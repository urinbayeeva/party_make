import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_party/pages/create_event/event_name.dart';
import 'package:house_party/pages/event_scheduled/done_event_page.dart';

class BoardGame extends StatefulWidget {
  const BoardGame({super.key});

  @override
  State<BoardGame> createState() => _BoardGameState();
}

class _BoardGameState extends State<BoardGame> {
  double buttonOpacity = 0.5;
  bool isPressedYes = false;
  bool isPressedNo = false;
  bool isPressedBook = false;
  bool isPressedPot = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF090909),
      appBar: AppBar(
        backgroundColor: const Color(0xFF090909),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset("assets/icons/appbar_back.svg")),
            const SizedBox(width: 8,),
            const Text("Create a New Event",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 350,
                  height: 3,
                  color: const Color(0xFF76A9FF),
                ),
              ],
            ),
            const SizedBox(height: 24,),
            Center(child: SvgPicture.asset("assets/icons/label.svg")),
            const SizedBox(height: 24,),
            const Text("Do you plan to rent board games?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                setState(() {
                  isPressedYes = true;
                });
              },
              onDoubleTap: (){
                setState(() {
                  isPressedYes = false;
                });
              },
              child: Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  color: isPressedYes ? const Color(0xFF292E36) : const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isPressedYes ? const Color(0xFF76A9FF) : Colors.transparent,
                    width: 1,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, top: 12, bottom: 11),
                  child: Text("Yes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                setState(() {
                  isPressedNo = true;
                });
              },
              onDoubleTap: (){
                setState(() {
                  isPressedNo = false;
                });
              },
              child: Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  color: isPressedNo ? const Color(0xFF292E36) : const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isPressedNo ? const Color(0xFF76A9FF) : Colors.transparent,
                    width: 1,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, top: 12, bottom: 11),
                  child: Text("No",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                setState(() {
                  isPressedBook = true;
                });
              },
              onDoubleTap: (){
                setState(() {
                  isPressedBook = false;
                });
              },
              child: Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  color: isPressedBook ? const Color(0xFF292E36) : const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: isPressedBook ? const Color(0xFF76A9FF) : Colors.transparent,
                    width: 1,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 15, top: 12),
                  child: Text("I have board games at home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonOpacity = 1.0;
                });

                Navigator.push(context, MaterialPageRoute(builder: (context) => const DoneEvent()));

              },
              onLongPress: () {
                setState(() {
                  buttonOpacity = 0.5;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isPressedNo || isPressedYes || isPressedBook? const Color(0xFF76A9FF) : const Color(0xFF76A9FF).withOpacity(buttonOpacity),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Set the border radius
                ),
              ),
              child:  Center(
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    color: isPressedNo || isPressedYes || isPressedBook? Colors.white :  Colors.white.withOpacity(buttonOpacity),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
