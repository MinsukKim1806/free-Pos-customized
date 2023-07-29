import 'package:sqflite/sqflite.dart';
class DbNote extends DbRecord {
  final title = CvField<String>(columnTitle);
  final content = CvField<String>(columnContent);
  final date = CvField<int>(columnUpdated);

  @override
  List<CvField> get fields => [id, title, content, date];
}