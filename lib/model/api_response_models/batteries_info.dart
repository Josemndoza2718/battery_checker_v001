class BatteriesInfo {
    int? sequenceId;
    int? id;
    String? name;
    String? urlImage;
    String? imagePath;
    bool? owned;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;
    bool? deleted;

    BatteriesInfo({
        this.sequenceId,
        this.id,
        this.name,
        this.urlImage,
        this.imagePath,
        this.owned,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.deleted,
    });

    factory BatteriesInfo.fromJson(Map<String, dynamic> json) => BatteriesInfo(
        sequenceId: json["sequence_id"],
        id: json["id"],
        name: json["name"],
        urlImage: json["url_image"],
        imagePath: json["image_path"],
        owned: json["owned"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        deleted: json["deleted"],
    );

    Map<String, dynamic> toJson() => {
        "sequence_id": sequenceId,
        "id": id,
        "name": name,
        "url_image": urlImage,
        "image_path": imagePath,
        "owned": owned,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
        "deleted": deleted,
    };
}
