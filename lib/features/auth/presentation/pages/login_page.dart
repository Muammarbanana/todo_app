import 'package:flutter/material.dart';
import 'package:todo_app/features/features.dart';
import 'package:todo_app/l10n/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.loginTitleText,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              Text(context.l10n.loginEmailTitleText),
              TextFormField(),
              const SizedBox(height: 12),
              Text(context.l10n.loginPasswordTitleText),
              TextFormField(),
              const SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(value: true, onChanged: (value) {}),
                  ),
                  const SizedBox(width: 12),
                  Text(context.l10n.loginRememberMeText),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(context.l10n.loginTitleText),
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerRight,
                child: Text(context.l10n.loginForgotPassswordText),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      child: Text(context.l10n.loginOrText),
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButtonWidget(
                    assetPath: 'assets/icons/google.png',
                    color: Colors.red,
                  ),
                  SizedBox(width: 12),
                  SocialMediaButtonWidget(
                    assetPath: 'assets/icons/facebook.png',
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 12),
                  SocialMediaButtonWidget(
                    assetPath: 'assets/icons/linkedin.png',
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(context.l10n.loginNeedAccountText),
                  const SizedBox(width: 6),
                  Text(
                    context.l10n.loginSignUpText,
                    style:
                        const TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
