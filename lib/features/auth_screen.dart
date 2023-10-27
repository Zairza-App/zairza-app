import 'package:flutter/material.dart';
import 'package:zairza_app/features/auth_service.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  final _authService = AuthService();
  final _nameController = TextEditingController();
  final _regNoController = TextEditingController();
  final _branchController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _batchController = TextEditingController();

  bool _isLoading = false;
  bool isLogin = true;

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('An Error Occurred!'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  Future<void> _submitAuthForm(bool isLogin) async {
    if (!_formKey.currentState!.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState!.save();

    setState(() {
      _isLoading = true;
    });

    try {
      if (isLogin) {
        final success = await _authService.login(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        if (success) {
          Navigator.of(context).pushReplacementNamed('/home');
        } else {
          _showErrorDialog('Invalid credentials.');
        }
      } else {
        await _authService.register(
          name: _nameController.text.trim(),
          registrationNumber: _regNoController.text.trim(),
          branch: _branchController.text.trim(),
          phoneNumber: _phoneController.text.trim(),
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
          batch: _batchController.text.trim(),
        );
        Navigator.of(context).pushReplacementNamed('/home');
      }
    } catch (error) {
      print(error);
      _showErrorDialog('Could not authenticate you. Please try again later.');
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _regNoController,
                decoration: const InputDecoration(labelText: 'Registration Number'),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your registration number.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _branchController,
                decoration: const InputDecoration(labelText: 'Branch'),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your branch.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address.';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email address.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                textInputAction:
                    isLogin ? TextInputAction.done : TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password.';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters long.';
                  }
                  return null;
                },
              ),
              if (!isLogin) // Show batch field only for registration
                TextFormField(
                  controller: _batchController,
                  decoration: const InputDecoration(labelText: 'Batch'),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your batch.';
                    }
                    return null;
                  },
                ),
              const SizedBox(height: 16),
              if (_isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              if (!_isLoading)
                ElevatedButton(
                  onPressed: () => _submitAuthForm(true),
                  child: const Text('Login'),
                ),
              if (!_isLoading)
                TextButton(
                  onPressed: () => _submitAuthForm(false),
                  child: const Text('Register'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
