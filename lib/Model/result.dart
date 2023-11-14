class Results {
  String? thumbnail;
  int? id;
  String? title;
  String? dateAndTime;
  String? slug;
  String? createdAt;
  String? manifest;
  int? liveStatus;
  String? liveManifest;
  bool? isLive;
  String? channelImage;
  String? channelName;
  bool? isVerified;
  String? channelSlug;
  String? channelSubscriber;
  int? channelId;
  String? type;
  String? viewers;
  String? duration;

  Results(
      {this.thumbnail,
      this.id,
      this.title,
      this.dateAndTime,
      this.slug,
      this.createdAt,
      this.manifest,
      this.liveStatus,
      this.liveManifest,
      this.isLive,
      this.channelImage,
      this.channelName,
      this.isVerified,
      this.channelSlug,
      this.channelSubscriber,
      this.channelId,
      this.type,
      this.viewers,
      this.duration});

  Results.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'];
    id = json['id'];
    title = json['title'];
    dateAndTime = json['date_and_time'];
    slug = json['slug'];
    createdAt = json['created_at'];
    manifest = json['manifest'];
    liveStatus = json['live_status'];
    liveManifest = json['live_manifest'];
    isLive = json['is_live'];
    channelImage = json['channel_image'];
    channelName = json['channel_name'];
    isVerified = json['is_verified'];
    channelSlug = json['channel_slug'];
    channelSubscriber = json['channel_subscriber'];
    channelId = json['channel_id'];
    type = json['type'];
    viewers = json['viewers'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail'] = thumbnail;
    data['id'] = id;
    data['title'] = title;
    data['date_and_time'] = dateAndTime;
    data['slug'] = slug;
    data['created_at'] = createdAt;
    data['manifest'] = manifest;
    data['live_status'] = liveStatus;
    data['live_manifest'] = liveManifest;
    data['is_live'] = isLive;
    data['channel_image'] = channelImage;
    data['channel_name'] = channelName;
    data['is_verified'] = isVerified;
    data['channel_slug'] = channelSlug;
    data['channel_subscriber'] = channelSubscriber;
    data['channel_id'] = channelId;
    data['type'] = type;
    data['viewers'] = viewers;
    data['duration'] = duration;
    return data;
  }
}