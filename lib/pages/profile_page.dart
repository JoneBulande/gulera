import 'package:flutter/material.dart';
import 'package:gulera/core/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.gray_600,
        title: const Text('Perfil', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Container(
                  width: 117,
                  height: 117,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColors.gray_600,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('./assets/images/profile.png'),
                  ),
                ),
                const SizedBox(height: 14),
                const Text('Alterar fato', style: TextStyle(color: AppColors.green_500, fontSize: 16)),
                const SizedBox(height: 37),
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Jone Bulande',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                    focusedBorder: OutlineInputBorder(),
                    fillColor: AppColors.gray_600,
                    // hintStyle: AppTextStyles.input,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'JoneBulande@email.com',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                    focusedBorder: const OutlineInputBorder(),
                    fillColor: AppColors.gray_600,
                    // hintStyle: AppTextStyles.input,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text('Alterar Senha', style: TextStyle(color: Colors.white), textAlign: TextAlign.left),
                ),
                const SizedBox(
                  height: 14,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Senha Antiga',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                    focusedBorder: const OutlineInputBorder(),
                    fillColor: AppColors.gray_600,
                    // hintStyle: AppTextStyles.input,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Nova senha',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                    focusedBorder: const OutlineInputBorder(),
                    fillColor: AppColors.gray_600,
                    // hintStyle: AppTextStyles.input,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.green_700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // <-- Radius
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Atualizar',
                      style: TextStyle(
                        color: Colors.white,
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
