
String caesarCipher(String text, String mode, {int shift = 3}) {
  String result = '';

  // Adjust shift for decryption
  if (mode == 'decrypt') {
    shift = -shift;
  }

  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    int charCode = char.codeUnitAt(0);

    if (char.toUpperCase() != char.toLowerCase()) {
      // Check if the character is a letter (uppercase or lowercase)
      int base = charCode <= 90 ? 65 : 97; // Base for uppercase or lowercase
      int shiftedChar =
          base + (charCode - base + shift) % 26; // Handle wrap-around
      result += String.fromCharCode(shiftedChar);
    } else {
      // Non-alphabet characters remain unchanged
      result += char;
    }
  }

  return result;
}


// void main() {
//   String text = "Hello, World!";
//   int shift = 3;

//   // Encryption
//   String encrypted = caesarCipher(text, 'encrypt', shift: shift);
//   print("Original: $text");
//   print("Encrypted: $encrypted");

//   // Decryption
//   String decrypted = caesarCipher(encrypted, 'decrypt', shift: shift);
//   print("Decrypted: $decrypted");
// }
