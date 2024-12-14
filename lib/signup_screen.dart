import 'package:aminate_signin_app/custom_button.dart';
import 'package:aminate_signin_app/custom_field.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final VoidCallback onLoginTap;

  const SignupScreen({super.key, required this.onLoginTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                FadeInDown(
                  duration: const Duration(microseconds: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 16),
                        decoration: BoxDecoration(
                            color: const Color(0xFF4A154B).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text(
                          'Join us today',
                          style: TextStyle(
                              color: Color(0xFF4A154B),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Create your\naccount',
                        style: TextStyle(
                            color: Color(0xFF1D1C1D),
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            fontSize: 36),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                FadeInUp(
                  duration: const Duration(microseconds: 600),
                  delay: const Duration(microseconds: 200),
                  child: const Column(
                    children: [
                      CustomTextField(
                        icon: CupertinoIcons.mail,
                        hint: 'Email',
                        gradientColors: [Color(0xFF4A154B), Color(0xFF6B1A6B)],
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        icon: CupertinoIcons.person,
                        hint: 'Username',
                        gradientColors: [Color(0xFF4A154B), Color(0xFF6B1A6B)],
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        icon: CupertinoIcons.lock,
                        hint: 'Password',
                        isPassword: true,
                        gradientColors: [Color(0xFF4A154B), Color(0xFF6B1A6B)],
                      ),
                      SizedBox(height: 16),
                      CustomTextField(
                        icon: CupertinoIcons.lock,
                        hint: 'Confirm Password',
                        isPassword: true,
                        gradientColors: [Color(0xFF4A154B), Color(0xFF6B1A6B)],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                FadeInUp(
                  duration: const Duration(microseconds: 600),
                  delay: const Duration(microseconds: 400),
                  child: CustomButton(onPressed: () {}, text: 'Create Account'),
                ),
                const SizedBox(height: 24),
                FadeIn(
                  duration: const Duration(microseconds: 600),
                  delay: const Duration(microseconds: 600),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account ?",
                        style: TextStyle(
                          color: Color(0xFF1D1C1D),
                        ),
                      ),
                      GestureDetector(
                        onTap: onLoginTap,
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Color(0xFF4A154B),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                FadeInUp(
                  duration: const Duration(microseconds: 600),
                  delay: const Duration(microseconds: 800),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Color(0xFFE0E0E0)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Or continue with',
                              style: TextStyle(
                                  color: Color(0xFF1D1C1D),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Color(0xFFE0E0E0)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElasticIn(
                            duration: const Duration(microseconds: 800),
                            delay: const Duration(microseconds: 1000),
                            child: _buildSocialButton(
                                icon: Icons.g_mobiledata,
                                label: 'Google',
                                gradientColors: [
                                  const Color(0xFFDB4437),
                                  const Color(0xFFF66D5B)
                                ]),
                          ),
                          ElasticIn(
                            duration: const Duration(microseconds: 800),
                            delay: const Duration(microseconds: 1200),
                            child: _buildSocialButton(
                                icon: Icons.apple,
                                label: 'Apple',
                                gradientColors: [
                                  const Color(0xFF000000),
                                  const Color(0xFF2C2C2C)
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(
      {required IconData icon,
      required String label,
      required List<Color> gradientColors}) {
    return Container(
      height: 55,
      width: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          gradientColors[0].withOpacity(0.1),
          gradientColors[1].withOpacity(0.1)
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: gradientColors[0]),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
                color: gradientColors[0], fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
