import 'package:flutter/material.dart';
import 'package:gulera/core/app_colors.dart';
import 'package:gulera/pages/exercise_page.dart';

class HomePageTabs extends StatefulWidget {
  const HomePageTabs({super.key});

  @override
  State<HomePageTabs> createState() => _HomePageTabsState();
}

class _HomePageTabsState extends State<HomePageTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: Container(
            color: Colors.black,
            child: TabBar(
              isScrollable: true,
              indicatorWeight: 3,
              controller: _tabController,
              dividerColor: Colors.black,
              tabAlignment: TabAlignment.start,
              labelColor: AppColors.green_700,
              indicatorColor: AppColors.green_700,
              physics: const AlwaysScrollableScrollPhysics(),
              tabs: const [
                Tab(text: 'COSTAS'),
                Tab(text: 'BÍCEPS'),
                Tab(text: 'TRÍCEPS'),
                Tab(text: 'OMBRO'),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 23, 18.0, 2),
          child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercícios',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('14', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      const SizedBox(height: 17),
                      ListView.builder(
                        shrinkWrap:
                            true, // Faz o ListView ocupar somente o espaço necessário
                        physics:
                            const NeverScrollableScrollPhysics(), // Desativa o scroll do ListView
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(7.5),
                                child: Container(
                                  color: AppColors.gray_700,
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => ExercisePage(
                                                exerciseLoop: 12,
                                                exerciseSeries: 3,
                                                exerciseCategory: 'Costas',
                                                exerciseName: 'Puxada frontal',
                                                // exerciseImage: // './assets/images/work${index + 1}.png',
                                              ),
                                        ),
                                      );
                                    },
                                    leading: Image.asset(
                                      './assets/images/work${index + 1}.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                    title: Text(
                                      'Nome do exercício ${index + 1}',
                                      style: TextStyle(color: Colors.grey[200]),
                                    ),
                                    subtitle: Text(
                                      'X séries - Y repetições',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: AppColors.gray_600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 7),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                child: const Text(
                  'Page 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.black,
                child: const Text(
                  'Page 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.black,
                child: const Text(
                  'Page 4',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
