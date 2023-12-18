enum FromWho{
  me,
  yours,
}

class Message{
  final String text;
  final String? imageURL;
  final FromWho fromWho;

  Message({required this.text, this.imageURL, required this.fromWho});
}