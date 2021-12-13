import 'package:bookmark/faunadb/bookmark_model.dart';
import 'package:faunadb_data/faunadb_data.dart';

class BookmarkRepository extends FaunaRepository<BookmarkModel>{
  BookmarkRepository() : super("bookmark", "all_bookmark");

}