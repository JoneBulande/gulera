import 'package:flutter/material.dart';
import 'package:gulera/core/app_colors.dart';

class ExercisePage extends StatelessWidget {
  final String exerciseName;
  final String exerciseCategory;
  // final String exerciseImage;
  final int exerciseSeries;
  final int exerciseLoop;
  const ExercisePage({
    super.key,
    required this.exerciseName,
    required this.exerciseCategory,
    // required this.exerciseImage,
    required this.exerciseSeries,
    required this.exerciseLoop,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back, color: AppColors.green_500),
          ),
        ),
        backgroundColor: AppColors.gray_600,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(37),
          child: Container(
            color: AppColors.gray_600,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    exerciseName,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.fitness_center,
                        size: 12,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        exerciseCategory,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 28),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7.5),
                  child: Image.asset(
                    width: double.infinity,
                    height: 400,
                    './assets/images/image.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 17),
                ClipRRect(
                  borderRadius: BorderRadius.circular(7.5),
                  child: Container(
                    color: AppColors.gray_600,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 18.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    './assets/images/logo.png',
                                    width: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '$exerciseSeries séries',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.repeat,
                                    color: AppColors.green_500,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '$exerciseSeries repetições',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.green_700,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    4,
                                  ), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Marcar como realizado',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
      ),
    );
  }
}
