class Biography {
  String? fullName;
  String? alterEgos;
  List<String>? aliases;
  String? placeOfBirth;
  String? firstAppearance;
  String? publisher;
  String? alignment;

  Biography({
    this.fullName,
    this.alterEgos,
    this.aliases,
    this.placeOfBirth,
    this.firstAppearance,
    this.publisher,
    this.alignment,
  });

  factory Biography.fromJson(Map<String, dynamic> json) => Biography(
        fullName: json["fullName"],
        alterEgos: json["alterEgos"],
        aliases: List<String>.from(json["aliases"].map((x) => x)),
        placeOfBirth: json["placeOfBirth"],
        firstAppearance: json["firstAppearance"],
        publisher: json["publisher"],
        alignment: json["alignment"],
      );

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "alterEgos": alterEgos,
        "aliases": List<dynamic>.from(aliases!.map((x) => x)),
        "placeOfBirth": placeOfBirth,
        "firstAppearance": firstAppearance,
        "publisher": publisher,
        "alignment": alignment,
      };
}
