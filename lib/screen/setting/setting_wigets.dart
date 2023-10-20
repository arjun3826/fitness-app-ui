import 'package:flutter/material.dart';

class SettingWigets extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onClick;
  final IconData? option;

  const SettingWigets(
      {super.key,
      required this.icon,
      required this.text,
      this.onClick,
      this.option});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 15, bottom: 15, right: 10),
                child: Row(
                  children: [
                    Icon(icon),
                    const SizedBox(width: 38),
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Icon(option, size: 25)
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
