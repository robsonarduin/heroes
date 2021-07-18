class Images {
  String? xs;
  String? sm;
  String? md;
  String? lg;

  Images({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        xs: json["xs"],
        sm: json["sm"],
        md: json["md"],
        lg: json["lg"],
      );

  Map<String, dynamic> toJson() => {
        "xs": xs,
        "sm": sm,
        "md": md,
        "lg": lg,
      };
}
