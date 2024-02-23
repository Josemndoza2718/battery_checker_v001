class Batteries{
    // int? amperage;
    // int? amperageHours;
     int? brandId;
    // DateTime? createdAt;
    // DateTime? dateAssigned;
     DateTime? dateWarrantyEnd;
     DateTime? dateWarrantyStart;
    // bool? deleted;
    // DateTime? deletedAt;
    // String? dynamicsId;
    // String? family;
    // int? id;
    // bool? isActive;
    // int? modelId;
     String? modelName;
    // int? organizationId;
    // int? sequenceId;
    // String? serial;
    // int? stanbyCapacity;
    // int? startingCurrent;
    // DateTime? updatedAt;
    // int? warranty;

    Batteries({
        // this.amperage,
        // this.amperageHours,
         this.brandId,
        // this.createdAt,
        // this.dateAssigned,
         this.dateWarrantyEnd,
         this.dateWarrantyStart,
        // this.deleted,
        // this.deletedAt,
        // this.dynamicsId,
        // this.family,
        // this.id,
        // this.isActive,
        // this.modelId,
         this.modelName,
        // this.organizationId,
        // this.sequenceId,
        // this.serial,
        // this.stanbyCapacity,
        // this.startingCurrent,
        // this.updatedAt,
        // this.warranty,
    });

    factory Batteries.fromJson(Map<String, dynamic> json) => Batteries(
        //amperage: json["amperage"],
        //amperageHours: json["amperage_hours"],
        brandId: json["brand_id"],
        //createdAt: DateTime.parse(json["created_at"]),
        //dateAssigned: DateTime.parse(json["date_assigned"]),
        dateWarrantyEnd: DateTime.parse(json["date_warranty_end"]),
        dateWarrantyStart: DateTime.parse(json["date_warranty_start"]),
        //deleted: json["deleted"],
        //deletedAt: json["deleted_at"],
        //dynamicsId: json["dynamics_id"],
        //family: json["family"],
        //id: json["id"],
        //isActive: json["is_active"],
        //modelId: json["model_id"],
        modelName: json["model_name"],
        //organizationId: json["organization_id"],
        //sequenceId: json["sequence_id"],
        //serial: json["serial"],
        //stanbyCapacity: json["stanby_capacity"],
        //startingCurrent: json["starting_current"],
        //updatedAt: DateTime.parse(json["updated_at"]),
        //warranty: json["warranty"],
    );

    Map<String, dynamic> toJson() => {
        // "amperage": amperage,
        // "amperage_hours": amperageHours,
         "brand_id": brandId,
        // "created_at": createdAt?.toIso8601String(),
        // "date_assigned": dateAssigned?.toIso8601String(),
         "date_warranty_end": dateWarrantyEnd?.toIso8601String(),
         "date_warranty_start": dateWarrantyStart?.toIso8601String(),
        // "deleted": deleted,
        // "deleted_at": deletedAt?.toIso8601String(),
        // "dynamics_id": dynamicsId,
        // "family": family,
        // "id": id,
        // "is_active": isActive,
        // "model_id": modelId,
         "model_name": modelName,
        // "organization_id": organizationId,
        // "sequence_id": sequenceId,
        // "serial": serial,
        // "stanby_capacity": stanbyCapacity,
        // "starting_current": startingCurrent,
        // "updated_at": updatedAt?.toIso8601String(),
        // "warranty": warranty,
    };
}
