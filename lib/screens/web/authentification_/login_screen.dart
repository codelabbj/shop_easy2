import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/customs_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 8),
                const Text("Enter your email and password to access your account."),
                const SizedBox(height: 24),
                CustomTextFormField(
                  label: "Email",
                  hintText: "sellostore@company.com",
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomTextFormField(
                  label: "Password",
                  hintText: "••••••••",
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (val) {
                            setState(() => _rememberMe = val ?? false);
                          },
                        ),
                        const Text("Remember Me"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Your Password?"),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Call login logic
                    },
                    child: const Text("Log In"),
                  ),
                ),
                const SizedBox(height: 16),
                const Center(child: Text("Or Login With")),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton.icon(
                      icon: const Icon(Icons.g_mobiledata),
                      label: const Text("Google"),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    OutlinedButton.icon(
                      icon: const Icon(Icons.apple),
                      label: const Text("Apple"),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text.rich(
                      TextSpan(
                        text: "Don’t Have An Account? ",
                        children: [TextSpan(text: "Register Now.", style: TextStyle(fontWeight: FontWeight.bold))],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
