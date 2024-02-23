class BatteriesUserPost {
    int? amperage;
    int? amperageHours;
    int? brandId;
    DateTime? dateAssigned;
    DateTime? dateWarrantyEnd;
    DateTime? dateWarrantyStart;
    String? dynamicsId;
    String? family;
    int? modelId;
    String? modelName;
    int? organizationId;
    String? serial;
    int? stanbyCapacity;
    int? startingCurrent;
    int? warranty;

    BatteriesUserPost({
        this.amperage,
        this.amperageHours,
        this.brandId,
        this.dateAssigned,
        this.dateWarrantyEnd,
        this.dateWarrantyStart,
        this.dynamicsId,
        this.family,
        this.modelId,
        this.modelName,
        this.organizationId,
        this.serial,
        this.stanbyCapacity,
        this.startingCurrent,
        this.warranty,
    });

    factory BatteriesUserPost.fromJson(Map<String, dynamic> json) => BatteriesUserPost(
        amperage: json["amperage"],
        amperageHours: json["amperage_hours"],
        brandId: json["brand_id"],
        dateAssigned: json["date_assigned"] == null ? null : DateTime.parse(json["date_assigned"]),
        dateWarrantyEnd: json["date_warranty_end"] == null ? null : DateTime.parse(json["date_warranty_end"]),
        dateWarrantyStart: json["date_warranty_start"] == null ? null : DateTime.parse(json["date_warranty_start"]),
        dynamicsId: json["dynamics_id"],
        family: json["family"],
        modelId: json["model_id"],
        modelName: json["model_name"],
        organizationId: json["organization_id"],
        serial: json["serial"],
        stanbyCapacity: json["stanby_capacity"],
        startingCurrent: json["starting_current"],
        warranty: json["warranty"],
    );

    Map<String, dynamic> toJson() => {
        "amperage": amperage,
        "amperage_hours": amperageHours,
        "brand_id": brandId,
        "date_assigned": dateAssigned?.toIso8601String(),
        "date_warranty_end": dateWarrantyEnd?.toIso8601String(),
        "date_warranty_start": dateWarrantyStart?.toIso8601String(),
        "dynamics_id": dynamicsId,
        "family": family,
        "model_id": modelId,
        "model_name": modelName,
        "organization_id": organizationId,
        "serial": serial,
        "stanby_capacity": stanbyCapacity,
        "starting_current": startingCurrent,
        "warranty": warranty,
    };
}
