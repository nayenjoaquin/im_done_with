import 'dart:async';

import 'package:flutter/material.dart';

class DurationTimer extends StatefulWidget {
  final DateTime since;
  const DurationTimer({super.key, required this.since});

  @override
  State<DurationTimer> createState() => _DurationTimerState();
}

class _DurationTimerState extends State<DurationTimer> {

  late int days;
  late int hours;
  late int  minutes;
  late int seconds;

  void updateDuration() {
    setState(() {
      final now = DateTime.now();
      final difference = now.difference(widget.since);
      days = difference.inDays;
      hours = difference.inHours - (days * 24);
      minutes = difference.inMinutes - (days * 24 * 60) - (hours * 60);
      seconds = difference.inSeconds - (days * 24 * 60 * 60) - (hours * 60 * 60) - (minutes * 60);
    });

  }

  @override
  void initState() {
    super.initState();
    updateDuration();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updateDuration();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${days~/10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                ),
                const SizedBox(width: 1.0),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${days%10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                )
              ],
            ),
            const Text('days', style: TextStyle(fontSize: 12.0, color: Colors.grey)),
          ],
        ),
        const SizedBox(width: 10.0),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${hours~/10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                ),
                const SizedBox(width: 1.0),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${hours%10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                )
              ],
            ),
            const Text('hours', style: TextStyle(fontSize: 12.0, color: Colors.grey)),
          ],
        ),
        const SizedBox(width: 10.0),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${minutes~/10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                ),
                const SizedBox(width: 1.0),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${minutes%10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                )
              ],
            ),
            const Text('minutes', style: TextStyle(fontSize: 12.0, color: Colors.grey)),
          ],
        ),
        const SizedBox(width: 10.0),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${seconds~/10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                ),
                const SizedBox(width: 1.0),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text('${seconds%10}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  ),
                  ),
                )
              ],
            ),
            const Text('seconds', style: TextStyle(fontSize: 12.0, color: Colors.grey)),
          ],
        ),

      ]
    );
  }
}