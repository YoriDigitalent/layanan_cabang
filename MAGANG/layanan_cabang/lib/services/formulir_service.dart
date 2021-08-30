part of 'services.dart';

class FormulirServices {
  FirebaseFirestore _formDB = FirebaseFirestore.instance;

  //Add Form
  Future<void> addForm(Formulir formulir) {
    return _formDB.collection('forms').doc(formulir.id).set(formulir.toJson());
  }

  //Delete Form
  Future<void> removeForm(String id) {
    return _formDB.collection('forms').doc(id).delete();
  }
}
