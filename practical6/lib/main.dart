import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.network("https://cdn-icons-png.flaticon.com/512/6521/6521996.png" , width: 100, height: 100,),
              const SizedBox(height: 20),
              const Text("Create a new account", style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              
              _buildTextField("Full Name"),
              const SizedBox(height: 15),
              _buildTextField("Username"),
              const SizedBox(height: 15),
              _buildTextField("Email"),
              const SizedBox(height: 15),
              _buildTextField("Password", obscureText: true),
              const SizedBox(height: 15),
              _buildTextField("Confirm Password", obscureText: true),
              const SizedBox(height: 15),
              _buildTextField("Date of Birth", keyboardType: TextInputType.datetime),
              const SizedBox(height: 15),
              _buildTextField("Gender"),
              const SizedBox(height: 15),
              _buildTextField("Mobile No", keyboardType: TextInputType.phone),
              const SizedBox(height: 15),
              _buildTextField("Address", maxLines: 3),
              const SizedBox(height: 30),

              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Register", style: TextStyle(fontSize: 20)),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Already have an account? Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool obscureText = false, TextInputType keyboardType = TextInputType.text, int maxLines = 1}) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
