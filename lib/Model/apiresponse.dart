import 'package:qutectask/Model/links.dart';
import 'package:qutectask/Model/result.dart';

class APiResponseModel {
  Links? links;
  int? total;
  int? page;
  int? pageSize;
  List<Results>? results;

  APiResponseModel(
      {this.links, this.total, this.page, this.pageSize, this.results});

  APiResponseModel.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    total = json['total'];
    page = json['page'];
    pageSize = json['page_size'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add( Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (links != null) {
      data['links'] = links!.toJson();
    }
    data['total'] = total;
    data['page'] = page;
    data['page_size'] = pageSize;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}