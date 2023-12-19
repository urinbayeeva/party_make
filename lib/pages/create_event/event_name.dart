import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_party/pages/create_event/send_invite.dart';

class EventName extends StatefulWidget {
  const EventName({Key? key}) : super(key: key);

  @override
  State<EventName> createState() => _EventNameState();
}

class _EventNameState extends State<EventName> {
  double buttonOpacity = 0.5;
  bool isFilled = false;
  TextEditingController eventNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController budgetController = TextEditingController();

  void checkFields() {
    setState(() {
      isFilled = eventNameController.text.isNotEmpty &&
          dateController.text.isNotEmpty &&
          timeController.text.isNotEmpty &&
          budgetController.text.isNotEmpty;
    });
  }

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
              const SizedBox(
                width: 8,
              ),
              const Text(
                "Create a New Event",
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
                    width: 128,
                    height: 3,
                    color: const Color(0xFF76A9FF),
                  ),
                  Container(
                    width: 220,
                    height: 3,
                    decoration: const BoxDecoration(
                      color: Color(0xFF474747),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Event Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: TextField(
                  controller: eventNameController,
                  onChanged: (value) {
                    checkFields();
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z ]+$')),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1C1C1C),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Date",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: TextField(
                  controller: dateController,
                  onChanged: (value) {
                    checkFields();
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^[\d.]+$')),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1C1C1C),
                    contentPadding: const EdgeInsets.all(10),
                    label: const Text(
                      "DD-MM-YYYY",
                    ),
                    labelStyle: const TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Color(0xFF787878),
                    ),
                    suffixStyle: const TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Time",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: TextField(
                  controller: timeController,
                  onChanged: (value) {
                    checkFields();
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d{0,2}:\d{0,2}$')),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1C1C1C),
                    contentPadding: const EdgeInsets.all(10),
                    label: const Text(
                      "HH:MM",
                    ),
                    labelStyle: const TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: const Icon(
                      Icons.watch_later_outlined,
                      color: Color(0xFF787878),
                    ),
                    suffixStyle: const TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Budget",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: TextField(
                  controller: budgetController,
                  onChanged: (value) {
                    checkFields();
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d+$')),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF1C1C1C),
                    contentPadding: const EdgeInsets.all(10),
                    suffixIcon: const Icon(
                      Icons.attach_money_outlined,
                      color: Color(0xFF787878),
                    ),
                    suffixStyle: const TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: isFilled
                    ? () {
                  setState(() {
                    buttonOpacity = 1.0;
                  });

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SendInvite()));
                }
                    : null,
                onLongPress: () {
                  setState(() {
                    buttonOpacity = 0.5;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isFilled
                      ? const Color(0xFF76A9FF)
                      : const Color(0xFF76A9FF).withOpacity(buttonOpacity),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color: isFilled
                          ? Colors.white
                          : Colors.white.withOpacity(buttonOpacity),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
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
