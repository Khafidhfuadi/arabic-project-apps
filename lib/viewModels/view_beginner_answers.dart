part of 'viewModels.dart';

Future getAnswersBegin() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://db-arab.herokuapp.com/api/answerbegin"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan jawaban");
      final data = beginerAnswerFromJson(hasil.body);
      return data;
    } else {
      print("Gagal menampilkan jawaban");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}
