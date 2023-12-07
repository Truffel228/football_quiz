class Event {
  const Event({
    required this.title,
    required this.text,
    required this.url,
    required this.time,
    required this.theme,
  });

  final String title;
  final String text;
  final String url;
  final DateTime time;
  final String theme;
}
