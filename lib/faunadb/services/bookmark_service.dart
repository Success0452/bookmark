import 'package:bookmark/faunadb/bookmark_model.dart';
import 'package:bookmark/faunadb/bookmark_repository.dart';
import 'package:faunadb_data/faunadb_data.dart';
import 'package:optional/optional.dart';

class BookmarkService {
  BookmarkRepository bookmarkRepository = BookmarkRepository();

      saveTodo(BookmarkModel bookmarkModel) async{
    await bookmarkRepository.save(bookmarkModel, getBookmarkFromJson);
      }

      Future<List> getAllBookmark() async{
        PaginationOptions p0 = PaginationOptions(size: Optional.of(20));
        final result = await bookmarkRepository.findAll(p0, getBookmarkFromJson);
        return result.data;
      }

  Future<BookmarkModel> getSingleBookmark(String id) async{
    final result = await bookmarkRepository.find(id, getBookmarkFromJson);
    return result.value;
  }

  updateBookmark(BookmarkModel bookmarkModel) async{
        await bookmarkRepository.save(bookmarkModel, getBookmarkFromJson);
  }

  deleteBookmark(String id) async{
        final result = await bookmarkRepository.remove(id, getBookmarkFromJson);
        return result.value;
  }
}