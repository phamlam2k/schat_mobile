import 'package:json_annotation/json_annotation.dart';
import 'package:schat/app/core/exceptions/models/data.dart';

part 'data_model.g.dart';

@JsonSerializable()
class DataModel extends Data {
  DataModel({message}) : super(message: message);

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}
