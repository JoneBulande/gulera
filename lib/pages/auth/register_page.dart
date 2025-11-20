import 'package:flutter/material.dart';
import 'package:gulera/pages/main_page.dart';
import 'package:gulera/core/app_colors.dart';
import 'package:gulera/pages/auth/login_page.dart';
import 'package:gulera/widgets/my_text_filed.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit:
                BoxFit.fitWidth, // Ajusta a imagem para cobrir todo o container
            alignment: Alignment.topCenter,
            image: AssetImage(
              'assets/images/bg.png',
            ), // Caminho da imagem no assets
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          color: Colors.black.withOpacity(0.70),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 28.0,
                vertical: 7,
              ),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 27.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/logo.png',
                                  width: 50,
                                ),
                                const Text(
                                  'Gulera Gym',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Treine sua mente e o seu corpo',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Crie sua conta',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          MyTextFiled(hitText: 'Nome'),
                          const SizedBox(height: 10),
                          MyTextFiled(hitText: 'E-mail'),
                          const SizedBox(height: 10),
                          MyTextFiled(hitText: 'Senha', obscureText: true),
                          const SizedBox(height: 10),
                          MyTextFiled(
                            hitText: 'Confirmar Senha',
                            obscureText: true,
                          ),

                          const SizedBox(height: 10),
                          SizedBox(
                            height: 50,
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
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Criar e acessar',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 56,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                width: 1,
                                color: AppColors.green_700,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Voltar para login',
                                style: TextStyle(
                                  color: AppColors.green_700,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.transparent,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 28),
      //     child: Container(
      //       height: 56,
      //       width: MediaQuery.of(context).size.width,
      //       decoration: BoxDecoration(
      //         color: Colors.black,
      //         borderRadius: BorderRadius.circular(7),
      //         border: Border.all(
      //           width: 1,
      //           color: AppColors.green_700,
      //         ),
      //       ),
      //       child: TextButton(
      //         onPressed: () {
      //           Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(builder: (context) => const LoginPage()),
      //           );
      //         },
      //         child: const Text(
      //           'Voltar para login',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontWeight: FontWeight.w600,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
