part of 'models.dart';

class Formulir {
  String id;
  String selectedLayanan;
  String noRek;
  String namaLengkap;
  String noNIK;
  String tempatLahir;
  String tanggalLahir;
  String alamatEmail;
  String noHP;
  String namaIbuKandung;
  String alamatTinggal;
  String selectedDate;
  int selectedTimes;
  String place;

  Formulir(
      {this.id,
      this.selectedLayanan,
      this.noRek,
      this.namaLengkap,
      this.noNIK,
      this.tempatLahir,
      this.tanggalLahir,
      this.alamatEmail,
      this.noHP,
      this.namaIbuKandung,
      this.alamatTinggal,
      this.selectedDate,
      this.selectedTimes,
      this.place});

  // formatting for upload to Firebase
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'selectedLayanan': selectedLayanan,
      'noRek': noRek,
      'namaLengkap': namaLengkap,
      'noNIK': noNIK,
      'tempatLahir': tempatLahir,
      'tanggalLahir': tanggalLahir,
      'alamatEmail': alamatEmail,
      'noHP': noHP,
      'namaIbuKandung': namaIbuKandung,
      'alamatTinggal': alamatTinggal,
      'selectedDate': selectedDate,
      'selectedTimes': selectedTimes,
      'place': place
    };
  }

  // creating formulir object from snapshot firebase
  Formulir.fromSnapshot(DocumentSnapshot snapshot)
      : id = snapshot['id'],
        selectedLayanan = snapshot['selectedLayana'],
        noRek = snapshot['noRek'],
        namaLengkap = snapshot['namaLengkap'],
        noNIK = snapshot['noNIK'],
        tempatLahir = snapshot['tempatLahir'],
        tanggalLahir = snapshot['tanggalLahir'],
        alamatEmail = snapshot['alamatEmail'],
        noHP = snapshot['noHP'],
        namaIbuKandung = snapshot['namaIbuKandung'],
        alamatTinggal = snapshot['alamatTinggal'],
        selectedDate = snapshot['selectedDate'],
        selectedTimes = snapshot['selectedTimes'],
        place = snapshot['place'];
}
