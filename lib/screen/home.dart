import 'package:flutter/material.dart';
import 'package:caesar_cipher/colors/utils.dart';
import 'package:caesar_cipher/core/logic.dart';
import 'package:caesar_cipher/custom_widgets/custom_copy_button.dart';

class Caesar_Cipher extends StatefulWidget {
  const Caesar_Cipher({super.key});

  @override
  State<Caesar_Cipher> createState() => _Caesar_CipherState();
}

class _Caesar_CipherState extends State<Caesar_Cipher> {
  final TextEditingController _textController = TextEditingController();
  String _encryptedText = '';
  String _decryptedText = '';
  final int _shift = 3;

  void _encrypt() {
    // print("Encrypt button pressed"); // Debug print
    FocusScope.of(context).unfocus(); // Dismiss keyboard

    setState(() {
      _encryptedText =
          caesarCipher(_textController.text, 'encrypt', shift: _shift);
      _decryptedText = ''; // Clear decrypted text
      _textController.clear(); // Clear the input field
    });
  }

  void _decrypt() {
    // print("Decrypt button pressed"); // Debug print
    FocusScope.of(context).unfocus(); // Dismiss keyboard

    setState(() {
      _decryptedText =
          caesarCipher(_textController.text, 'decrypt', shift: _shift);
      _encryptedText = ''; // Clear encrypted text
      _textController.clear(); // Clear the input field
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/splash_icon.png'),
        title: Text(
          'Caesar Cipher Calculator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          // Add SingleChildScrollView to avoid layout issues
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: customInputDecor,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _encrypt,
                    style: customBStyle,
                    child: Text(
                      "Encrypt",
                      style: customBTextstyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _decrypt,
                    style: customBStyle,
                    child: Text(
                      "Decrypt",
                      style: customBTextstyle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              AnimatedOpacity(
                opacity: _encryptedText.isNotEmpty || _decryptedText.isNotEmpty
                    ? 1.0
                    : 0.0,
                duration: Duration(milliseconds: 300),
                child: Card(
                  color: Colors.blue[100],
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _encryptedText.isNotEmpty
                                ? 'Encrypted: $_encryptedText'
                                : 'Decrypted: $_decryptedText',
                            style: resultTextStyle,
                          ),
                        ),
                        // Use the custom CopyIconButton widget
                        CopyIconButton(
                          text: _encryptedText.isNotEmpty ? _encryptedText : _decryptedText,
                          context: context,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
