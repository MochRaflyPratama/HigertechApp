class StationModel {
  final String? id;
  final String? slug;
  final String? organizationCode;
  final String? balaiName;
  final String? photo;
  final String? subDomain;
  final String? subDomainOld;
  final String? noRegister;
  final String? name;
  final String? stationType;
  final String? type;
  final int? elevation;
  final double? latitude;
  final double? longitude;
  final String? riverAreaId;
  final String? watershedId;
  final String? provinceId;
  final String? regencyId;
  final String? districtId;
  final String? villageId;
  final String? builtYear;
  final String? builtBy;
  final String? renovationYear;
  final String? renovationBy;
  final String? note;
  final String? createdAt;
  final String? createdBy;
  final String? updatedAt;
  final String? updatedBy;
  final String? deletedAt;
  final String? deletedBy;
  final String? deviceId;
  final String? noGsm;
  final String? installedDate;
  final String? calibration;
  final String? brandCode;
  final String? brandName;
  final String? riverAreaName;
  final String? watershedName;
  final String? provinceName;
  final String? regencyName;
  final String? districtName;
  final String? villageName;
  final String? unitDisplay;
  final String? unitSensor;
  final double? peilschaalBasisValue;
  final double? peilschaalBasisElevation;
  final double? konstantaA;
  final double? konstantaB;
  final double? siaga1;
  final double? siaga2;
  final double? siaga3;
  final double? heightMercu;
  final String? lastReadingAt;
  final String? deviceStatus;
  final String? username;
  final String? password;
  final String? warningStatus;
  final double? waterLevel;
  final dynamic awlrLastReading;
  final double? rainfall;
  final double? rainfallLastHour;
  final double? rainfallLastDay;
  final double? rainfallMax;
  final double? intensityLastHour;
  final double? intensityLastDay;
  final dynamic arrLastReading;

  StationModel({
    this.id,
    this.slug,
    this.organizationCode,
    this.balaiName,
    this.photo,
    this.subDomain,
    this.subDomainOld,
    this.noRegister,
    this.name,
    this.stationType,
    this.type,
    this.elevation,
    this.latitude,
    this.longitude,
    this.riverAreaId,
    this.watershedId,
    this.provinceId,
    this.regencyId,
    this.districtId,
    this.villageId,
    this.builtYear,
    this.builtBy,
    this.renovationYear,
    this.renovationBy,
    this.note,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
    this.deletedAt,
    this.deletedBy,
    this.deviceId,
    this.noGsm,
    this.installedDate,
    this.calibration,
    this.brandCode,
    this.brandName,
    this.riverAreaName,
    this.watershedName,
    this.provinceName,
    this.regencyName,
    this.districtName,
    this.villageName,
    this.unitDisplay,
    this.unitSensor,
    this.peilschaalBasisValue,
    this.peilschaalBasisElevation,
    this.konstantaA,
    this.konstantaB,
    this.siaga1,
    this.siaga2,
    this.siaga3,
    this.heightMercu,
    this.lastReadingAt,
    this.deviceStatus,
    this.username,
    this.password,
    this.warningStatus,
    this.waterLevel,
    this.awlrLastReading,
    this.rainfall,
    this.rainfallLastHour,
    this.rainfallLastDay,
    this.rainfallMax,
    this.intensityLastHour,
    this.intensityLastDay,
    this.arrLastReading,
  });

  factory StationModel.fromJson(Map<String, dynamic> json) => StationModel(
        id: json['id'],
        slug: json['slug'],
        organizationCode: json['organizationCode'],
        balaiName: json['balaiName'],
        photo: json['photo'],
        subDomain: json['subDomain'],
        subDomainOld: json['subDomainOld'],
        noRegister: json['noRegister'],
        name: json['name'],
        stationType: json['stationType'],
        type: json['type'],
        elevation: json['elevation'],
        latitude: (json['latitude'] as num?)?.toDouble(),
        longitude: (json['longitude'] as num?)?.toDouble(),
        riverAreaId: json['riverAreaId'],
        watershedId: json['watershedId'],
        provinceId: json['provinceId'],
        regencyId: json['regencyId'],
        districtId: json['districtId'],
        villageId: json['villageId'],
        builtYear: json['builtYear'],
        builtBy: json['builtBy'],
        renovationYear: json['renovationYear'],
        renovationBy: json['renovationBy'],
        note: json['note'],
        createdAt: json['createdAt'],
        createdBy: json['createdBy'],
        updatedAt: json['updatedAt'],
        updatedBy: json['updatedBy'],
        deletedAt: json['deletedAt'],
        deletedBy: json['deletedBy'],
        deviceId: json['deviceId'],
        noGsm: json['noGsm'],
        installedDate: json['installedDate'],
        calibration: json['calibration'],
        brandCode: json['brandCode'],
        brandName: json['brandName'],
        riverAreaName: json['riverAreaName'],
        watershedName: json['watershedName'],
        provinceName: json['provinceName'],
        regencyName: json['regencyName'],
        districtName: json['districtName'],
        villageName: json['villageName'],
        unitDisplay: json['unitDisplay'],
        unitSensor: json['unitSensor'],
        peilschaalBasisValue: (json['peilschaalBasisValue'] as num?)?.toDouble(),
        peilschaalBasisElevation:
            (json['peilschaalBasisElevation'] as num?)?.toDouble(),
        konstantaA: (json['konstantaA'] as num?)?.toDouble(),
        konstantaB: (json['konstantaB'] as num?)?.toDouble(),
        siaga1: (json['siaga1'] as num?)?.toDouble(),
        siaga2: (json['siaga2'] as num?)?.toDouble(),
        siaga3: (json['siaga3'] as num?)?.toDouble(),
        heightMercu: (json['heightMercu'] as num?)?.toDouble(),
        lastReadingAt: json['lastReadingAt'],
        deviceStatus: json['deviceStatus'],
        username: json['username'],
        password: json['password'],
        warningStatus: json['warningStatus'],
        waterLevel: (json['waterLevel'] as num?)?.toDouble(),
        awlrLastReading: json['awlrLastReading'],
        rainfall: (json['rainfall'] as num?)?.toDouble(),
        rainfallLastHour: (json['rainfallLastHour'] as num?)?.toDouble(),
        rainfallLastDay: (json['rainfallLastDay'] as num?)?.toDouble(),
        rainfallMax: (json['rainfallMax'] as num?)?.toDouble(),
        intensityLastHour: (json['intensityLastHour'] as num?)?.toDouble(),
        intensityLastDay: (json['intensityLastDay'] as num?)?.toDouble(),
        arrLastReading: json['arrLastReading'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'organizationCode': organizationCode,
        'balaiName': balaiName,
        'photo': photo,
        'subDomain': subDomain,
        'subDomainOld': subDomainOld,
        'noRegister': noRegister,
        'name': name,
        'stationType': stationType,
        'type': type,
        'elevation': elevation,
        'latitude': latitude,
        'longitude': longitude,
        'riverAreaId': riverAreaId,
        'watershedId': watershedId,
        'provinceId': provinceId,
        'regencyId': regencyId,
        'districtId': districtId,
        'villageId': villageId,
        'builtYear': builtYear,
        'builtBy': builtBy,
        'renovationYear': renovationYear,
        'renovationBy': renovationBy,
        'note': note,
        'createdAt': createdAt,
        'createdBy': createdBy,
        'updatedAt': updatedAt,
        'updatedBy': updatedBy,
        'deletedAt': deletedAt,
        'deletedBy': deletedBy,
        'deviceId': deviceId,
        'noGsm': noGsm,
        'installedDate': installedDate,
        'calibration': calibration,
        'brandCode': brandCode,
        'brandName': brandName,
        'riverAreaName': riverAreaName,
        'watershedName': watershedName,
        'provinceName': provinceName,
        'regencyName': regencyName,
        'districtName': districtName,
        'villageName': villageName,
        'unitDisplay': unitDisplay,
        'unitSensor': unitSensor,
        'peilschaalBasisValue': peilschaalBasisValue,
        'peilschaalBasisElevation': peilschaalBasisElevation,
        'konstantaA': konstantaA,
        'konstantaB': konstantaB,
        'siaga1': siaga1,
        'siaga2': siaga2,
        'siaga3': siaga3,
        'heightMercu': heightMercu,
        'lastReadingAt': lastReadingAt,
        'deviceStatus': deviceStatus,
        'username': username,
        'password': password,
        'warningStatus': warningStatus,
        'waterLevel': waterLevel,
        'awlrLastReading': awlrLastReading,
        'rainfall': rainfall,
        'rainfallLastHour': rainfallLastHour,
        'rainfallLastDay': rainfallLastDay,
        'rainfallMax': rainfallMax,
        'intensityLastHour': intensityLastHour,
        'intensityLastDay': intensityLastDay,
        'arrLastReading': arrLastReading,
      };
}
