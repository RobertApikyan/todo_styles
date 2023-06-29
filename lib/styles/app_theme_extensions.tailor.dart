// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme_extensions.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppThemeExtensionsTailorMixin on ThemeExtension<AppThemeExtensions> {
  Color get listItemBackgroundColor;
  Color get listItemSelectedBackgroundColor;
  TextStyle get listItemTitleTextStyle;

  @override
  AppThemeExtensions copyWith({
    Color? listItemBackgroundColor,
    Color? listItemSelectedBackgroundColor,
    TextStyle? listItemTitleTextStyle,
  }) {
    return AppThemeExtensions(
      listItemBackgroundColor:
          listItemBackgroundColor ?? this.listItemBackgroundColor,
      listItemSelectedBackgroundColor: listItemSelectedBackgroundColor ??
          this.listItemSelectedBackgroundColor,
      listItemTitleTextStyle:
          listItemTitleTextStyle ?? this.listItemTitleTextStyle,
    );
  }

  @override
  AppThemeExtensions lerp(
      covariant ThemeExtension<AppThemeExtensions>? other, double t) {
    if (other is! AppThemeExtensions) return this as AppThemeExtensions;
    return AppThemeExtensions(
      listItemBackgroundColor: Color.lerp(
          listItemBackgroundColor, other.listItemBackgroundColor, t)!,
      listItemSelectedBackgroundColor: Color.lerp(
          listItemSelectedBackgroundColor,
          other.listItemSelectedBackgroundColor,
          t)!,
      listItemTitleTextStyle: TextStyle.lerp(
          listItemTitleTextStyle, other.listItemTitleTextStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppThemeExtensions &&
            const DeepCollectionEquality().equals(
                listItemBackgroundColor, other.listItemBackgroundColor) &&
            const DeepCollectionEquality().equals(
                listItemSelectedBackgroundColor,
                other.listItemSelectedBackgroundColor) &&
            const DeepCollectionEquality()
                .equals(listItemTitleTextStyle, other.listItemTitleTextStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(listItemBackgroundColor),
      const DeepCollectionEquality().hash(listItemSelectedBackgroundColor),
      const DeepCollectionEquality().hash(listItemTitleTextStyle),
    );
  }
}

extension AppThemeExtensionsBuildContextProps on BuildContext {
  AppThemeExtensions get appThemeExtensions =>
      Theme.of(this).extension<AppThemeExtensions>()!;
  Color get listItemBackgroundColor =>
      appThemeExtensions.listItemBackgroundColor;
  Color get listItemSelectedBackgroundColor =>
      appThemeExtensions.listItemSelectedBackgroundColor;
  TextStyle get listItemTitleTextStyle =>
      appThemeExtensions.listItemTitleTextStyle;
}
