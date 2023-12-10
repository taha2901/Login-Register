import 'package:flutter/material.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? email;
  String? passWord;
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFAEBD7),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.arrow_left,color: Colors.black,size: 40,),
          ),
        ),
        elevation: 0.0,
        backgroundColor: const Color(0xffFFFAEBD7),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Glad To see You,',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Again!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomTextField(
                  hint: 'Enter Your Email',
                  prefixIcon: Icons.person,
                  onChange: (data) {
                    email = data;
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomTextField(
                  hint: 'Enter Your Password',
                  prefixIcon:
                      isPassword ? Icons.visibility : Icons.visibility_off,
                  suffixPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  isPassword: isPassword,
                  onChange: (data) {
                    passWord = data;
                  },
                ),
                const SizedBox(
                  height: 6,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password ?',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                    text: 'Login',
                    color: Colors.black,
                    textcolor: Colors.white,
                    onTap: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        print('Email: $email');
                        print('Password: $passWord');
                      }
                    }),
                const SizedBox(
                  height: 13,
                ),
                const Center(child: Text('Or Login With')),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: 100.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: 100.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.facebook,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: 100.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.apple,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 127,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don`\t have an account',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Register Now',
                        style: TextStyle(color: Colors.blueAccent),
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
}
