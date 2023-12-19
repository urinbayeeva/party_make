import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_party/pages/create_event/amount_of_people.dart';

class OccasionPage extends StatefulWidget {
  const OccasionPage({super.key});

  @override
  State<OccasionPage> createState() => _OccasionPageState();
}

class _OccasionPageState extends State<OccasionPage> {
  double buttonOpacity = 0.5;
  bool isPressedFirst = false;
  bool isPressedSecond = false;
  bool isPressedThird = false;
  bool isPressedFourth = false;
  bool isPressedFive = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    width: 41,
                    height: 3,
                    color: const Color(0xFF76A9FF),
                  ),
                  Container(
                    width: 328,
                    height: 3,
                    decoration: const BoxDecoration(
                      color: Color(0xFF474747),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              const Text("What is the occasion?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              ),
              const SizedBox(height: 16 ,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedFirst ? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedFirst
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressedFirst = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            isPressedFirst = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/container.svg"),
                            const SizedBox(height: 9,),
                            const Text("Birthday",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14,),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedSecond ? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedSecond
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressedSecond = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            isPressedSecond = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/heart.svg"),
                            const SizedBox(height: 9,),
                            const Text("Anniversary",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14,),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedThird ? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedThird
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressedThird = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            isPressedThird = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/dinner.svg"),
                            const SizedBox(height: 9,),
                            const Text("Dinner",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedFourth? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedFourth
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressedFourth = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            isPressedFourth = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/drinks.svg"),
                            const SizedBox(height: 9,),
                            const Text("Meet Up",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14,),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedFive? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedFive
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPressedFive = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            isPressedFive = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/other.svg"),
                            const SizedBox(height: 9,),
                            const Text("Other",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonOpacity = 1.0;
                  });
      
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PeoplePage()));
      
                },
                onLongPress: () {
                  setState(() {
                    buttonOpacity = 0.5;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isPressedFirst || isPressedSecond || isPressedThird|| isPressedFourth || isPressedFive? const Color(0xFF76A9FF) : const Color(0xFF76A9FF).withOpacity(buttonOpacity),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Set the border radius
                  ),
                ),
                child:  Center(
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color:  isPressedFirst || isPressedSecond || isPressedThird|| isPressedFourth || isPressedFive? Colors.white :  Colors.white.withOpacity(buttonOpacity),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
      
            ],
          ),
        ),
      ),
    );
  }
}
