part of 'viewModels.dart';

Future getSoal() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://db-arab.herokuapp.com/api/begin"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan soal");
      final data = beginnerModelsFromJson(hasil.body);
      return data;
    } else {
      print("Gagal menampilkan soal");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}
