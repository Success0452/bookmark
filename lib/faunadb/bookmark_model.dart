import 'package:faunadb_data/faunadb_data.dart';

class BookmarkModel extends Entity<BookmarkModel>{
  late final String id;
  late final String name;
  late final String link;
  late final bool completed;
  late final String date;


  BookmarkModel(this.id, this.name, this.link, this.completed, this.date);

  @override
  BookmarkModel fromJson(Map<String, dynamic> model) {
   return BookmarkModel(
       model[id] as String,
       model[name] as String,
       model[link] as String,
       model[completed] as bool,
       model[date] as String
   );
  }

  @override
  String getId() {
    return id;
  }

  @override
  Map<String, dynamic> model() {
    Map<String, dynamic> model = {
      'id' : id,
      'name' : name,
      'link' : link,
      'completed' : completed,
      'date' : date
    };
    return model;
  }

  static String collection() => "bookmark";
  static String allBookmarkIndex() => "all bookmarks";


}

BookmarkModel getBookmarkFromJson(Map<String, dynamic> json) {
  return BookmarkModel(
    json['id'] as String,
    json['todoName'] as String,
    json['todoContent'] as String,
    json['status'] as bool,
    json['date'] as String,
  );
}