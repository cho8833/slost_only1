import 'package:json_annotation/json_annotation.dart';
import 'package:slost_only1/model/enums/gender.dart';

part 'kid.g.dart';

@JsonSerializable()
class Kid {
  int id;
  String name;
  int age;
  Gender gender;
  String other;

  Kid(this.id, this.name, this.age, this.gender, this.other);

  factory Kid.fromJson(Map<String, dynamic> json) => _$KidFromJson(json);

}