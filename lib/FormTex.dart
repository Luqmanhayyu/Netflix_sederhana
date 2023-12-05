import 'package:flutter/material.dart';
import 'page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormText(),
    );
  }
}

class FormText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                'https://th.bing.com/th/id/OIP.TTCgnTjm3-P-qjGSCmgBCAHaEH?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                width: 200,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Register an Account',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            FormWidget(),
          ],
        ),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();

  String _nbi = '';
  String _kelas = '';
  String _nama = '';
  String _instagram = '';
  String _alamat = '';

  Future<void> _submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _loading = true;
      });

      await Future.delayed(Duration(seconds: 2));

      setState(() {
        _loading = false;
      });

      print('NBI: $_nbi');
      print('Class: $_kelas');
      print('Name: $_nama');
      print('Instagram: $_instagram');
      print('Address: $_alamat');

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Page1(),
        ),
      );
    }
  }

  Widget buildTextFormField(
    String labelText,
    String value,
    void Function(String) onChanged, {
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        TextFormField(
          decoration: InputDecoration(
            labelText: isPassword ? '********' : '',
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          style: TextStyle(color: Colors.white),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
          onChanged: onChanged,
          obscureText: isPassword,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? Center(child: CircularProgressIndicator())
        : Form(
            key: _formKey,
            child: Column(
              children: [
                buildTextFormField(
                  'Enter Full Name',
                  _nama,
                  (value) => _nama = value,
                ),
                SizedBox(height: 12.0),
                buildTextFormField(
                  'Enter Email',
                  _nbi,
                  (value) => _nbi = value,
                ),
                SizedBox(height: 12.0),
                buildTextFormField(
                  'Re-enter Email',
                  _kelas,
                  (value) => _kelas = value,
                ),
                SizedBox(height: 12.0),
                buildTextFormField(
                  'Create Password',
                  _instagram,
                  (value) => _instagram = value,
                  isPassword: true,
                ),
                SizedBox(height: 12.0),
                buildTextFormField(
                  'Re-enter Password',
                  _alamat,
                  (value) => _alamat = value,
                  isPassword: true,
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ],
            ),
          );
  }
}
