import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckList extends StatefulWidget {
  const CheckList({super.key});

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  int count = 0;
  int discount = 6;
  bool isCheckedFirst = false;
  bool isCheckedThird = false;
  bool isCheckedSecond = false;
  bool isCheckedFourth = false;
  bool isCheckedFive = false;
  bool order = false;
  bool music = false;

  int totalItems = 6;

  int calculateCheckedCount() {
    int count = 0;
    if (isCheckedFirst) count++;
    if (isCheckedSecond) count++;
    if (isCheckedThird) count++;
    if (isCheckedFourth) count++;
    if (isCheckedFive) count++;

    return count;
  }


  @override
  Widget build(BuildContext context) {
    int checkedCount = calculateCheckedCount();
    int toDoCount = totalItems - checkedCount;
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
              const Text("Checklist",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        body:  Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 17),
          child: Column(
            children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sara’s Birthday Bash",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        SizedBox(height: 8,),
                        Text("10 Days to go",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(checkedCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        const Text("Done",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(toDoCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8,),
                        const Text("To Do",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              const SizedBox(height: 16,),
              const Divider(
                color: Color(0xFF313131),
              ),
              const SizedBox(height: 16,),
              Container(
               width: 350,
                height: 64,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      SizedBox(
                        width: 16,
                        height: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Checkbox(
                            side: const BorderSide(width: 0),
                            value: isCheckedFirst,
                            checkColor: Colors.black,
                            activeColor: Colors.white,
                            onChanged: (newBool) {
                              setState(() {
                                isCheckedFirst = newBool!;
                              });
                            },
                          ),
                        )

                      ),
                      const SizedBox(width: 16,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Create an e-invite",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                            SizedBox(height: 8,),
                            Text("Tap to create an e-invite ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                width: 350,
                height: 64,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 16,
                            height: 16,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Checkbox(
                                side: const BorderSide(width: 0),
                                value: isCheckedSecond,
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedSecond = newBool!;
                                  });
                                },
                              ),
                            )

                        ),
                        const SizedBox(width: 16,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Invite guests",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                            SizedBox(height: 8,),
                            Text("Tap to create an e-invite ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                width: 350,
                height: 64,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 16,
                            height: 16,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Checkbox(
                                side: const BorderSide(width: 0),
                                value: isCheckedThird,
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedThird = newBool!;
                                  });
                                },
                              ),
                            )

                        ),
                        const SizedBox(width: 16,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hire a decorator",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                            SizedBox(height: 8,),
                            Text("Tap to create an e-invite ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                width: 350,
                height: 64,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 10),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 16,
                            height: 16,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Checkbox(
                                side: const BorderSide(width: 0),
                                value: isCheckedFourth,
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedFourth = newBool!;
                                  });
                                },
                              ),
                            )

                        ),
                        const SizedBox(width: 16,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rent Board Games",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                            SizedBox(height: 8,),
                            Text("Tap to create an e-invite ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                width: 350,
                height: 41,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 16,
                            height: 16,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Checkbox(
                                side: const BorderSide(width: 0),
                                value: isCheckedFourth,
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedFourth = newBool!;
                                  });
                                },
                              ),
                            )

                        ),
                        const SizedBox(width: 16,),
                        const Text("Order food",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                width: 350,
                height: 41,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 16,
                            height: 16,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Checkbox(
                                side: const BorderSide(width: 0),
                                value: isCheckedFourth,
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedFourth = newBool!;
                                  });
                                },
                              ),
                            )

                        ),
                        const SizedBox(width: 16,),
                        const Text("Get Music System from Anjali",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Container(
                width: 350,
                height: 41,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 16,
                            height: 16,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Checkbox(
                                side: const BorderSide(width: 0),
                                value: isCheckedFourth,
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                                onChanged: (newBool) {
                                  setState(() {
                                    isCheckedFourth = newBool!;
                                  });
                                },
                              ),
                            )

                        ),
                        const SizedBox(width: 16,),
                        const Text("Tap to add a new item to the list",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
