part of 'providers.dart';

class FormulirBloc with ChangeNotifier {
  final formulirServices = FormulirServices();
  String _selectedLayanan;
  String _id;
  String _noRek;
  String _namaLengkap;
  String _noNIK;
  String _tempatLahir;
  String _tanggalLahir;
  String _alamatEmail;
  String _noHP;
  String _namaIbuKandung;
  String _alamatTinggal;
  var uuid = Uuid();

  //Getters
  String get selectedLayanan => _selectedLayanan;
  String get noRek => _noRek;
  String get namaLengkap => _namaLengkap;
  String get noNIK => _noNIK;
  String get tempatLahir => _tempatLahir;
  String get tanggalLahir => _tanggalLahir;
  String get alamatEmail => _alamatEmail;
  String get noHP => _noHP;
  String get namaIbuKandung => _namaIbuKandung;
  String get alamatTinggal => _alamatTinggal;
  //Stream<List<Formulir>> get forms => formulirServices.getForm();

  //Setter

  set changeLayanan(String selectedLayanan) {
    _selectedLayanan = selectedLayanan;
    notifyListeners();
  }

  set changeNoRek(String noRek) {
    _noRek = noRek;
    notifyListeners();
  }

  set changeNamaLengkap(String namaLengkap) {
    _namaLengkap = namaLengkap;
    notifyListeners();
  }

  set changeNoNIK(String noNIK) {
    _noNIK = noNIK;
    notifyListeners();
  }

  set changeTempatLahir(String tempatLahir) {
    _tempatLahir = tempatLahir;
    notifyListeners();
  }

  set changeTanggalLahir(String tanggalLahir) {
    _tanggalLahir = tanggalLahir;
    notifyListeners();
  }

  set changeAlamatEmail(String alamatEmail) {
    _alamatEmail = alamatEmail;
    notifyListeners();
  }

  set changeNoHP(String noHP) {
    _noHP = noHP;
    notifyListeners();
  }

  set changeNamaIbuKandung(String namaIbuKandung) {
    _namaIbuKandung = namaIbuKandung;
    notifyListeners();
  }

  set changeAlamatTinggal(String alamatTinggal) {
    _alamatTinggal = alamatTinggal;
    notifyListeners();
  }

  //Functions
  loadForm(Formulir formulir) {
    if (formulir != null) {
      _selectedLayanan = formulir.selectedLayanan;
      _noRek = formulir.noRek;
      _namaLengkap = formulir.namaLengkap;
      _noNIK = formulir.noNIK;
      _tempatLahir = formulir.tempatLahir;
      _tanggalLahir = formulir.tanggalLahir;
      _alamatEmail = formulir.alamatEmail;
      _noHP = formulir.noHP;
      _namaIbuKandung = formulir.namaIbuKandung;
      _alamatTinggal = formulir.alamatTinggal;
    } else {
      _selectedLayanan = null;
      _noRek = null;
      _namaLengkap = null;
      _noNIK = null;
      _tempatLahir = null;
      _tanggalLahir = null;
      _alamatEmail = null;
      _noHP = null;
      _namaIbuKandung = null;
      _alamatTinggal = null;
    }
  }

  saveForm() {
    if (_id != null) {
      //Add
      var newForm = Formulir(
        id: uuid.v1(),
        selectedLayanan: _selectedLayanan,
        noRek: _noRek,
        namaLengkap: _namaLengkap,
        noNIK: _noNIK,
        tempatLahir: _tempatLahir,
        tanggalLahir: _tanggalLahir,
        noHP: _noHP,
        alamatEmail: _alamatEmail,
        namaIbuKandung: _namaIbuKandung,
        alamatTinggal: _alamatTinggal,
      );
      print(newForm);
      formulirServices.addForm(newForm);
    } else {
      //Edit
      var updatedForm = Formulir(
          selectedLayanan: _selectedLayanan,
          noRek: _noRek,
          namaLengkap: _namaLengkap,
          noNIK: _noNIK,
          tempatLahir: _tempatLahir,
          tanggalLahir: _tanggalLahir,
          noHP: _noHP,
          alamatEmail: _alamatEmail,
          namaIbuKandung: _namaIbuKandung,
          alamatTinggal: _alamatTinggal,
          id: _id);
      formulirServices.addForm(updatedForm);
    }
  }

  removeForm(String id) {
    formulirServices.removeForm(id);
  }
}
