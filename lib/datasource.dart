import 'dart:developer';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDataTableSource extends AsyncDataTableSource {
  List<Map<String, dynamic>> dataList=[
    {"id": 33187617, "lastName": "ABED", "firstName": "CHAHD", "arabicLastName": "عابد", "arabicFirstName": "شهد"},
    {"id": 38443610, "lastName": "ALSID CHIKH", "firstName": "SID AHMED", "arabicLastName": "آل سيد الشيخ", "arabicFirstName": "سيد أحمد"},
    {"id": 31229202, "lastName": "BELAID", "firstName": "KHEIREDDINE", "arabicLastName": "بلعيد", "arabicFirstName": "خير الدين"},
    {"id": 31275802, "lastName": "BELGHAT", "firstName": "MOKHTAR", "arabicLastName": "بلغات", "arabicFirstName": "مختار"},
    {"id": 31261711, "lastName": "BELMOKHTAR", "firstName": "MOUNIRA", "arabicLastName": "بلمختار", "arabicFirstName": "منيرة"},
    {"id": 31213903, "lastName": "BENBELKACEM", "firstName": "ZINEDDINE", "arabicLastName": "بن بلقاسم", "arabicFirstName": "زين الدين"},
    {"id": 31484304, "lastName": "BEN KACI ALI", "firstName": "DOUA", "arabicLastName": "بن قاسي علي", "arabicFirstName": "دوعاء"},
    {"id": 31387720, "lastName": "BENNACEUR", "firstName": "AMEL", "arabicLastName": "بن ناصر", "arabicFirstName": "امال"},
    {"id": 31254604, "lastName": "BENTARZI", "firstName": "CHAIMA", "arabicLastName": "بن تارزي", "arabicFirstName": "شيماء"},
    {"id": 31270514, "lastName": "BOUALOUACHE", "firstName": "Anfal", "arabicLastName": "بوعلواش", "arabicFirstName": "أنفال"},
    {"id": 31223101, "lastName": "BOUBEROUAT", "firstName": "CHAHD RITAJ", "arabicLastName": "بوبروات", "arabicFirstName": "شهد ريتاج"},
    {"id": 31498304, "lastName": "BOUDOUHA", "firstName": "OUMAIMA", "arabicLastName": "بودوحة", "arabicFirstName": "اميمة"},
    {"id": 31609708, "lastName": "BOURABA", "firstName": "YOUNES", "arabicLastName": "بورابعة", "arabicFirstName": "يونس"},
    {"id": 31214719, "lastName": "CHAIB", "firstName": "KAOUTHER", "arabicLastName": "شايب", "arabicFirstName": "كوثر"},
    {"id": 31405308, "lastName": "CHERIFI", "firstName": "KAOUTHER", "arabicLastName": "شريفي", "arabicFirstName": "كوثر"},
    {"id": 31451006, "lastName": "CHIKHI", "firstName": "AYA", "arabicLastName": "شيخي", "arabicFirstName": "آية"},
    {"id": 31296006, "lastName": "DOUIBI", "firstName": "FELLA", "arabicLastName": "دويبي", "arabicFirstName": "فلة"},
    {"id": 31396204, "lastName": "FODIL", "firstName": "MOHAMED ANOUAR", "arabicLastName": "فضيل", "arabicFirstName": "محمد انور"},
    {"id": 31285911, "lastName": "GHANEM", "firstName": "RANDA", "arabicLastName": "غانم", "arabicFirstName": "رندة"},
    {"id": 31404411, "lastName": "GOUFIFA", "firstName": "ABDELMALEK", "arabicLastName": "قوفيفة", "arabicFirstName": "عبد المالك"},
    {"id": 31275504, "lastName": "HADIOUCHE", "firstName": "LAMIA", "arabicLastName": "حديوش", "arabicFirstName": "لاميا"},
    {"id": 31214409, "lastName": "KADDOUR", "firstName": "FATIMA ZAHRA", "arabicLastName": "قدور", "arabicFirstName": "فاطمة الزهراء"},
    {"id": 31455509, "lastName": "KENDIL", "firstName": "ISMAIL", "arabicLastName": "قنديل", "arabicFirstName": "إسماعيل"},
    {"id": 31201313, "lastName": "LALLEM", "firstName": "MERIEM", "arabicLastName": "لعلام", "arabicFirstName": "مريم"},
    {"id": 31037875, "lastName": "MANAA", "firstName": "ABDENNASSER", "arabicLastName": "مانع", "arabicFirstName": "عبد الناصر"},
    {"id": 31042964, "lastName": "MEDDAHI", "firstName": "IDIR", "arabicLastName": "مداحي", "arabicFirstName": "إدير"},
    {"id": 31032204, "lastName": "MERMOURI", "firstName": "ABDESSALEM", "arabicLastName": "مرموري", "arabicFirstName": "عبد السلام"},
    {"id": 31200510, "lastName": "MESSADIA", "firstName": "YAKOUB", "arabicLastName": "مساعدية", "arabicFirstName": "يعقوب"},
    {"id": 31215202, "lastName": "NOUKAZ", "firstName": "HIBAT ALLAH", "arabicLastName": "نوكاز", "arabicFirstName": "هبة الله"},
    {"id": 31265804, "lastName": "RIAL", "firstName": "MOHAMED RAMI", "arabicLastName": "ريال", "arabicFirstName": "محمد رامي"},
    {"id": 35231604, "lastName": "SELLALI", "firstName": "DJOUMANA", "arabicLastName": "سلالي", "arabicFirstName": "جمانة"},
    {"id": 31458720, "lastName": "TEBREROU", "firstName": "KHALED", "arabicLastName": "تبررو", "arabicFirstName": "خالد"},
    {"id": 31229313, "lastName": "TOBAL", "firstName": "REKIA", "arabicLastName": "طوبال", "arabicFirstName": "رقية"},
    {"id": 31231503, "lastName": "YAHIOU", "firstName": "AHLEM", "arabicLastName": "يحيو", "arabicFirstName": "أحلام"},
    {"id": 31256404, "lastName": "YAKOUBI", "firstName": "BOUCHRA MARIA", "arabicLastName": "يعقوبي", "arabicFirstName": "بشرى ماريا"},
    {"id": 31265006, "lastName": "YOUNES", "firstName": "SYRINE", "arabicLastName": "يونس", "arabicFirstName": "سيرين"},
    {"id": 31444507, "lastName": "ZERROUATI", "firstName": "OUAIL", "arabicLastName": "زرواطي", "arabicFirstName": "وائل"},
  ];
  String search="";
  int sortIndex=0;
  bool asc=true;

  MyDataTableSource({required this.search,required this.sortIndex,required this.asc});

  @override
  Future<AsyncRowsResponse> getRows(int startIndex, int count) async {
    await Future.delayed(Duration(seconds: 2));

    List<Map<String, dynamic>> studentsList=dataList;
    if(search.isNotEmpty)
      studentsList.removeWhere((e)=>!e["lastName"].toString().contains(search));

    switch(sortIndex){
      case 0:
        studentsList.sort((a, b)=> a["id"].compareTo(b["id"]));
        break;
      case 1:
        studentsList.sort((a, b)=> a["firstName"].compareTo(b["firstName"]));

      case 2:
        studentsList.sort((a, b)=> a["lastName"].compareTo(b["lastName"]));
        break;
      case 3:
        studentsList.sort((a, b)=> a["arabicLastName"].compareTo(b["arabicLastName"]));
        break;
      case 4:
        studentsList.sort((a, b)=> a["arabicFirstName"].compareTo(b["arabicFirstName"]));
        break;

    }
    log("asc is $asc");
    if(!asc) studentsList=studentsList.reversed.toList();

    List<Map<String, dynamic>> paginatedData = studentsList.skip(startIndex).take(count).toList();
    return AsyncRowsResponse(
      studentsList.length,
       paginatedData.map((item) {
        return DataRow(
          cells: [
            DataCell(Text(item["id"].toString())),
            DataCell(Text(item["lastName"].toString())),
            DataCell(Text(item["firstName"].toString())),
            DataCell(Text(item["arabicLastName"].toString())),
            DataCell(Text(item["arabicFirstName"].toString())),
          ],
        );
      }).toList(),
    );
  }
}