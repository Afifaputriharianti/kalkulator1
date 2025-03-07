import 'dart:io';

void main() {
  print('--- Kalkulator Sederhana ---');

  // Input angka pertama
  stdout.write('Masukkan angka pertama: ');
  double angka1 = double.parse(stdin.readLineSync()!);

  // Input operator
  stdout.write('Masukkan operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  // Input angka kedua
  stdout.write('Masukkan angka kedua: ');
  double angka2 = double.parse(stdin.readLineSync()!);

  double hasil;

  // Proses operasi
  switch (operator) {
    case '+':
      hasil = angka1 + angka2;
      break;
    case '-':
      hasil = angka1 - angka2;
      break;
    case '*':
      hasil = angka1 * angka2;
      break;
    case '/':
      if (angka2 != 0) {
        hasil = angka1 / angka2;
      } else {
        print('Error: Pembagian dengan nol tidak diperbolehkan.');
        return;
      }
      break;
    default:
      print('Operator tidak valid.');
      return;
  }

  // Output hasil
  print('Hasil: $angka1 $operator $angka2 = $hasil');
}
