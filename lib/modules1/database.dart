import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import '../photo_upload/Photo_modal_class.dart';
part 'database.g.dart';
// entity for the database columns
class UserDetails extends Table{
    IntColumn get id => integer().autoIncrement()();// primary key of the database
    TextColumn get UserName => text().nullable()();
    TextColumn get Email => text().nullable()();
    TextColumn get Phone_number => text().nullable()();
    TextColumn get DateOfBirth => text().nullable()();
    TextColumn get customPhoto => text().nullable()();
}
//trying to create another table that will get hold of the users picture to be displayed on the gridview

// class UserPics extends Table{
//      IntColumn get ide => integer().autoIncrement()();
//      TextColumn get photo_name => text().nullable()();
// }

// database file where our details will be stored
LazyDatabase _openConnection(){
  return LazyDatabase(() async{
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'UserDetails.sqlite'));
    return NativeDatabase(file);
  });
}


@DriftDatabase(tables: [UserDetails, /*UserPics*/])// watch your back
class DataBase extends _$DataBase {
  DataBase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Stream<List<UserDetail>>? WatchAllUserDetail() {
  //   select(userDetails).watch();
  // }

  // writing queries for inserting, deleting , updating etc
  Future<List<UserDetail>> getUserDetails() async {
    // hmm, there is an issue here
    return await select(userDetails)
        .get(); // this will get us the list of the user details
  }

  Future<UserDetail> getUserDetail(int id) async {
    return await (select(userDetails)
      ..where((tbl) => tbl.id.equals(id))).getSingle();
  }
  Future<bool> updateUserDetail(UserDetailsCompanion entity) async {
    return await update(userDetails).replace(entity);
  }
  Future<int> InsertUserDetail(UserDetailsCompanion entity) async{
    return await into(userDetails).insert(entity);
  }
  Future<int> deleteUserDetail(int id) async{
    return await (delete(userDetails)..where((tbl) => tbl.id.equals(id))).go();
  }
  // Future<int> SavePics(UserPicsCompanion users) async{// for inserting the picture to the database
  //   return await into(userPics).insert(users);
  // }
  // Future<UserPic> getUserPic(int ide) async {// for getting the picture from the database
  //   return await (select(userPics)
  //     ..where((tbl) => tbl.ide.equals(ide))).getSingle();
  // }
}