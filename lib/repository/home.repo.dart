import 'dart:convert';

import 'package:fitness/models/home_training_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<List<HomeTrainingType>> getTrainingType() async {
    final String response =
        await rootBundle.loadString('mock/home_training_type.json');
    final data = await json.decode(response);

    return (data["data"])
        .map<HomeTrainingType>((e) => HomeTrainingType.fromJson(e))
        .toList();
  }
}
