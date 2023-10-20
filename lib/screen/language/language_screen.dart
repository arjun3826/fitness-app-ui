import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F6F9),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
          "Language",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 34),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search, size: 28),
                      hintText: "Search",
                      border: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(height: 21),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.black.withOpacity(0.10),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English", style: TextStyle(fontSize: 15)),
                Image(
                  image: AssetImage("assets/icons/currect.png"),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.black.withOpacity(0.10),
            ),
            const NotificationWigets(text: "Spanish"),
            const NotificationWigets(text: "Chinese"),
            const NotificationWigets(text: "Japanese"),
            const NotificationWigets(text: "French"),
            const NotificationWigets(text: "German"),
            const NotificationWigets(text: "Russian"),
            const NotificationWigets(text: "Portugues"),
            const NotificationWigets(text: "Italian"),
            const NotificationWigets(text: "Korean"),
          ],
        ),
      ),
    );
  }
}

class NotificationWigets extends StatelessWidget {
  // final ImageIcon ? image;
  final String text;
  const NotificationWigets({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: const TextStyle(fontSize: 15)),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: Colors.black.withOpacity(0.10),
        ),
      ],
    );
  }
}
