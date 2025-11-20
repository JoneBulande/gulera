import 'package:flutter/material.dart';
import 'package:gulera/core/app_colors.dart';

class ExercisesHistory extends StatefulWidget {
  const ExercisesHistory({super.key});

  @override
  State<ExercisesHistory> createState() => _ExercisesHistoryState();
}

class _ExercisesHistoryState extends State<ExercisesHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.gray_600,
        title: const Text('Histórico de Exercícios', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('27.01.2025', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 14),
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Container(
                    width: double.infinity,
                    color: AppColors.gray_600,
                    child: ListTile(
                      title: Text('Costas', style: TextStyle(color: Colors.grey[200])),
                      subtitle: Text('Puxada frontal', style: TextStyle(color: Colors.grey[600])),
                      trailing: Text('7:56', style: TextStyle(color: Colors.grey[700])),
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Container(
                    width: double.infinity,
                    color: AppColors.gray_600,
                    child: ListTile(
                      title: Text('Costas', style: TextStyle(color: Colors.grey[200])),
                      subtitle: Text('Puxada frontal', style: TextStyle(color: Colors.grey[600])),
                      trailing: Text('7:32', style: TextStyle(color: Colors.grey[700])),
                    ),
                  ),
                ),
                const SizedBox(height: 37),
                const Text('17.01.2025', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 13),
                ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Container(
                    width: double.infinity,
                    color: AppColors.gray_600,
                    child: ListTile(
                      title: Text('Costas', style: TextStyle(color: Colors.grey[200])),
                      subtitle: Text('Puxada frontal', style: TextStyle(color: Colors.grey[600])),
                      trailing: Text('11:24', style: TextStyle(color: Colors.grey[700])),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
