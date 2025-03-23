class CountStationModel {
  final int totalStation;
  final int offline;
  final int online;
  final int totalAwlr;
  final int totalArr;
  final int totalAws;
  final int totalAwlrArr;
  final int totalVNotch;
  final int totalFM;
  final int totalAVWR;
  final int totalWQ;
  final int totalOrganization;

  const CountStationModel({
    this.totalStation = 0,
    this.offline = 0,
    this.online = 0,
    this.totalAwlr = 0,
    this.totalArr = 0,
    this.totalAws = 0,
    this.totalAwlrArr = 0,
    this.totalVNotch = 0,
    this.totalFM = 0,
    this.totalAVWR = 0,
    this.totalWQ = 0,
    this.totalOrganization = 0,
  });

  factory CountStationModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const CountStationModel();

    return CountStationModel(
      totalStation: json['totalStation'] ?? 0,
      offline: json['offline'] ?? 0,
      online: json['online'] ?? 0,
      totalAwlr: json['totalAwlr'] ?? 0,
      totalArr: json['totalArr'] ?? 0,
      totalAws: json['totalAws'] ?? 0,
      totalAwlrArr: json['totalAwlrArr'] ?? 0,
      totalVNotch: json['totalVNotch'] ?? 0,
      totalFM: json['totalFM'] ?? 0,
      totalAVWR: json['totalAVWR'] ?? 0,
      totalWQ: json['totalWQ'] ?? 0,
      totalOrganization: json['totalOrganization'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalStation': totalStation,
      'offline': offline,
      'online': online,
      'totalAwlr': totalAwlr,
      'totalArr': totalArr,
      'totalAws': totalAws,
      'totalAwlrArr': totalAwlrArr,
      'totalVNotch': totalVNotch,
      'totalFM': totalFM,
      'totalAVWR': totalAVWR,
      'totalWQ': totalWQ,
      'totalOrganization': totalOrganization,
    };
  }
}
