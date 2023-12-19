import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_party/pages/create_event/occasion_page.dart';
import 'package:house_party/pages/event_scheduled/checklist_page.dart';

class DoneEvent extends StatelessWidget {
  const DoneEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF090909),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title:  Padding(
            padding: const EdgeInsets.only(left: 8, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Hi, Ishita 👋",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                  ),
                ),
                Stack(
                  children: [
                    Image.asset("assets/images/avatar_bcg.png", width: 46, height: 46,),
                    Positioned(
                      top: 5,
                      left: 6,
                      child: Image.asset("assets/images/avatar_event.png",
                        width: 36,
                        height: 36,)
                      ,)
                  ],
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 14, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckList()));
                },
                child: Container(
                  width: double.maxFinite,
                  height: 152,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF50586A),
                        Color(0xFF1E2530),
                      ],
                      stops: [0.114, 0.8572],
                    ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 16, right: 12),
                    child: Row(
                      children: [
                        const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text("Sara’s Birthday Bash",
                                  style:  TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8,),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Text("10 Days to go",
                                  style:  TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16,),
                             Padding(
                               padding: EdgeInsets.only(left: 20),
                               child: Row(
                                 children: [
                                   Text("0",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 16,
                                     fontWeight: FontWeight.w700
                                   ),
                                   ),
                                  SizedBox(width: 50,),
                                   Text("5",
                                     style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 16,
                                         fontWeight: FontWeight.w700
                                     ),
                                   ),

                                 ],
                               ),
                             ),
                              SizedBox(height: 8,),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text("Done",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Text("To Do",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ]
                        ),
                        const SizedBox(width: 16,),
                        Image.asset("assets/images/second.png",)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              const Text("Previous House Parties",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 134,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFF251B27),
                                  border: Border.all(width: 1, color: const Color(0xFFD898FF))
                              ),
                              child: Center(
                                child: SvgPicture.asset("assets/icons/cake.svg"),
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("Shravya’s Birthday",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )
                            ),
                            const SizedBox(height: 8,),
                            const Text("14-07-2021",
                              style: TextStyle(
                                color: Color(0xFFADADAD),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("8:00 PM",
                                style: TextStyle(
                                  color: Color(0xFFADADAD),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      height: 134,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1C1C1C),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFF251B27),
                                  border: Border.all(width: 1, color: const Color(0xFFD898FF))
                              ),
                              child: Center(
                                child: SvgPicture.asset("assets/icons/heart.svg"),
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("N&T’s Anniversary",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )
                            ),
                            const SizedBox(height: 8,),
                            const Text("14-07-2021",
                              style: TextStyle(
                                color: Color(0xFFADADAD),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 8,),
                            const Text("8:00 PM",
                                style: TextStyle(
                                  color: Color(0xFFADADAD),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
