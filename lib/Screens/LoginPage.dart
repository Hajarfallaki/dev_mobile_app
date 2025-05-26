import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final _keyForm = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  bool _passVisible = false;
  String? _emailvalidator(String? value) {
    if (value == null || value.isEmpty) return "Please enter your email";
    final _emailpattern = r'^[^@]+@[^@]+\.[^@]+';
    final regexp = RegExp(_emailpattern);
    if (!regexp.hasMatch(value)) return "Please enter a valid email address";
    return null;
  }
  String? _passvalidator(String? value) {
    if (value == null || value.isEmpty) return "Please enter your password";
    if (value.length < 6) return 'password must be at least 6 characters';
    return null;
  }
  Future<void> SignIn() async {
    try {
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _passcontroller.text.trim(),
      );
      print("Signed in: ${userCredential.user?.email}");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sign-in successful!")),
      );
    } on FirebaseAuthException catch (e) {
      // Bloc spécifique pour FirebaseAuthException
      String message;
      switch (e.code) {
      case 'user-not-found':
      message = "No user found for that email.";
      break;
      case 'wrong-password':
      message = "Wrong password provided.";
      break;
      case 'invalid-email':
        message = "The email address is invalid.";
        break;
        case 'user-disabled':
          message = "This user account has been disabled.";
          break;
        case 'too-many-requests':
          message = "Too many attempts. Please try again later.";
          break;
        default:
          message = "An error occurred. Try again.";
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
      print("FirebaseAuthException: $message");
    } on SocketException catch (e) {
      // Bloc spécifique pour les problèmes de réseau
      String message = "Network error: Please check your internet connection.";
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
      print("SocketException: $e");
    } catch (e) {
      // Bloc général pour les autres erreurs
      String message = "An unexpected error occurred.";
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
      print("Unknown error: $e");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Login page",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
    child: Form(
    key: _keyForm,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Image.asset("images/lamp_logo.png", height: 120, width: 120),
    SizedBox(height: 20),
    Text(
    "Hello back to the home page !",
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
    ),
    SizedBox(height: 20),
    TextFormField(
    controller: _emailcontroller,
    decoration: InputDecoration(
    labelText: "email",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15)),
        prefixIcon: Icon(
          Icons.mail,
          color: Colors.blueAccent,
        )),
        keyboardType: TextInputType.emailAddress,
        validator: _emailvalidator),
      SizedBox(height: 20),
      TextFormField(
          controller: _passcontroller,
          obscureText: !_passVisible,
          decoration: InputDecoration(
              labelText: "password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.blueAccent,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passVisible = !_passVisible;
                    });
                  },
                  icon: Icon(_passVisible
                      ? Icons.visibility
                      : Icons.visibility_off))),
          validator: _passvalidator),
      SizedBox(height: 20),
      SizedBox(height: 20),
      ElevatedButton(
          onPressed: () {
            if (_keyForm.currentState!.validate()) {
              // If the form is valid, execute the login logic
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Login')),
              );
              // Add your login logic here
              Navigator.pushNamed(context, "/home");
            }
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 30, color: Colors.deepOrange),
          )),
      SizedBox(height: 20),
      TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/register");
          },
          child: Text("Don't have an account ?",
              style: TextStyle(fontSize: 30, color: Colors.pink)))
    ],
    ),
    ),
        ),
    );
  }
}