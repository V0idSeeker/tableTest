import 'dart:developer';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'datasource.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  RxString search="".obs;
  RxBool asc=true.obs;
  RxInt sortIndex =0.obs;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onSubmitted: (value){
              search.value=value;

            },
          ),
          Expanded(
              child:Obx(()=>AsyncPaginatedDataTable2(
                empty: Text("Empty"),
                  rowsPerPage: 10,
                  columns: [
                    DataColumn(label: Text("Matriculate"),
                        onSort: (index,ascend){
                          asc.value= asc.isFalse;
                          sortIndex.value=index;}
                    ),
                    DataColumn(label: Text("First Name"),
                        onSort: (index,ascend){
                          asc.value= asc.isFalse;
                          sortIndex.value=index;}
                    ),
                    DataColumn(label: Text("Last Name"),
                        onSort: (index,ascend){
                          asc.value= asc.isFalse;
                          sortIndex.value=index;}
                    ),
                    DataColumn(label: Text("Arabic First Name"),

                        onSort: (index,ascend){
                          asc.value=ascend;
                          sortIndex.value=index;}
                    ),
                    DataColumn(label: Text("Arabic Last Name"),
                        onSort: (index,ascend){
                          asc.value= asc.isFalse;
                          sortIndex.value=index;}
                    ),
                  ],
                  source: MyDataTableSource(
                      search: search.value,
                      sortIndex: sortIndex.value,
                      asc:asc.value)
              )
              )
          ),
        ],
      )
    );
  }
}
