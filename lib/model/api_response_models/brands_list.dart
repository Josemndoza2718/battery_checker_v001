class BatteriesBrands {
    List<Item>? items;
    int? total;
    int? page;
    int? size;
    int? pages;
    Links? links;

    BatteriesBrands({
        this.items,
        this.total,
        this.page,
        this.size,
        this.pages,
        this.links,
    });

    factory BatteriesBrands.fromJson(Map<String, dynamic> json) => BatteriesBrands(
        items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        total: json["total"],
        page: json["page"],
        size: json["size"],
        pages: json["pages"],
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
    );

    Map<String, dynamic> toJson() => {
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "total": total,
        "page": page,
        "size": size,
        "pages": pages,
        "links": links?.toJson(),
    };
}

class Item {
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

    Item({
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

    factory Item.fromJson(Map<String, dynamic> json) => Item(
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

class Links {
    String? first;
    String? last;
    String? self;
    dynamic next;
    dynamic prev;

    Links({
        this.first,
        this.last,
        this.self,
        this.next,
        this.prev,
    });

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        self: json["self"],
        next: json["next"],
        prev: json["prev"],
    );

    Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
        "self": self,
        "next": next,
        "prev": prev,
    };
}
