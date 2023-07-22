import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:providerassignment/main.dart';

// ignore: unused_import
import '../authentication.dart';
import '../providers/user_provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Column(
          children: [
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text('email'),
                hintText: 'email',
              ),
            ),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text('password'),
                hintText: 'password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                userProvider.setCurrentUser(
                    emailController.value.text, passwordController.value.text);
                // Get username and password from the user.Pass the data to
                // helper method
                // AuthenticationHelper()
                //     .signIn(
                //         email: emailController.value.text,
                //         password: passwordController.value.text)
                //     .then((result) {
                //   if (result == null) {
                //     Navigator.pushReplacement(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const MyHomePage(
                //                   title: '',
                //                 )));
                //   } else {
                //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //       content: Text(
                //         result,
                //         style: const TextStyle(fontSize: 16),
                //       ),
                //     ));
                //   }
                // });
              },
              child: const Text('login'),
            ),
            Text('Your name is ${userProvider.name}'),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
