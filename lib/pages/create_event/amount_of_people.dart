import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_party/pages/create_event/event_name.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  double buttonOpacity = 0.5;
  bool isPressedFirst = false;
  bool isPressedSecond = false;
  bool isPressedThird = false;

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
                  width: 82,
                  height: 3,
                  color: const Color(0xFF76A9FF),
                ),
                Container(
                  width: 280,
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
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedFirst ? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedFirst
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/small_group.svg"),
                          const SizedBox(
                            height: 9,
                          ),
                          const Text(
                            "Small",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                            const Text(
                             "4-20 guests",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14,),
                Expanded(
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
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedSecond? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedSecond
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/medium_group.svg"),
                          const SizedBox(height: 9,),
                          const Text("Medium",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),
                          ),
                          const Text(
                            "20-60 guests",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14,),
                Expanded(
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
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: isPressedThird ? const Color(0xFF251B27) : const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                        border: isPressedThird
                            ? Border.all(width: 1, color: const Color(0xFFD898FF))
                            : null,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/large_group.svg"),
                          const SizedBox(height: 9,),
                          const Text("Large",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),
                          ),
                          const Text(
                            "60+ guests",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
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

                Navigator.push(context, MaterialPageRoute(builder: (context) => const EventName()));

              },
              onLongPress: () {
                setState(() {
                  buttonOpacity = 0.5;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isPressedFirst || isPressedSecond || isPressedThird? const Color(0xFF76A9FF) : const Color(0xFF76A9FF).withOpacity(buttonOpacity),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Set the border radius
                ),
              ),
              child:  Center(
                child: Text(
                  "NEXT",
                  style: TextStyle(
                    color: isPressedFirst || isPressedSecond || isPressedThird? Colors.white :  Colors.white.withOpacity(buttonOpacity),
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
