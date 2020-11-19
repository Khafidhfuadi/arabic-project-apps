part of 'viewModels.dart';

Future getSoalInter() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://db-arab.herokuapp.com/api/intermediate"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan soal");
      final data = intermediateModelFromJson(hasil.body);
      return data;
    } else {
      print("Gagal menampilkan soal");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}
