import 'dart:math';

import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'mentalhealth.dart';
import 'akademik.dart';
import 'keuangan.dart';
import 'medsos.dart';
import 'jadwaltodo.dart';
import 'pesangroup.dart';
import 'notifikasi.dart';
import 'elearning.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizScreen(),
    );
  }
}

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuItems = [
      "Main Screen",
      "Mental Health Screen",
      "Akademik Screen",
      "Keuangan Screen",
      "Medsos",
      "Elearning",
      "Jadwal & Todo",
      "Pesan & Group",
      "Notifikasi",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quiz 1",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico', // Gunakan font dekoratif
                  color: Colors.blueGrey,
                  shadows: [
                    Shadow(
                      blurRadius: 2,
                      color: Colors.blueGrey.withOpacity(0.5),
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ...menuItems.map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 40,
                      ),
                    ),
                    onPressed: () {
                      if (item == "Main Screen") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        );
                      } else if (item == "Mental Health Screen") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MentalHealthScreen(),
                          ),
                        );
                      } else if (item == "Akademik Screen") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AkademikScreen(),
                          ),
                        );
                      } else if (item == "Keuangan Screen") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KeuanganScreen(),
                          ),
                        );
                      } else if (item == "Medsos") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MedsosScreen(),
                          ),
                        );
                      } else if (item == "Jadwal & Todo") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JadwalTodoScreen(),
                          ),
                        );
                      } else if (item == "Pesan & Group") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PesanGroupScreen(),
                          ),
                        );
                      } else if (item == "Notifikasi") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotifikasiScreen(),
                          ),
                        );
                      } else if (item == "Elearning") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ElearningScreen(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
