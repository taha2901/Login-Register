import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
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
                  'Hey!',
                  style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Goin Now',
                  style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomTextField(
                  hint: 'user name',
                  onChange: (data) {
                    name = data;
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                
                CustomTextField(
                  hint: 'Email',
                  onChange: (data) {
                    email = data;
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomTextField(
                  hint: 'Phone Number',
                  onChange: (data) {
                    password = data;
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomTextField(
                  hint: 'Password',
                  onChange: (data) {
                    confirmPassword = data;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  text: 'Agree And Register',
                  color: Colors.black,
                  textcolor: Colors.white,
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      print("Name : $name");
                      print("Email : $email");
                      print("Password : $password");
                      print("ConfirmPass : $confirmPassword");
                    }
                  },
                ),
                const SizedBox(
                  height: 13,
                ),
                const Center(child: Text('Or Login With')),
                
                const SizedBox(
                  height: 20,
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
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
