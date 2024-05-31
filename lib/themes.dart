import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff980078),
      surfaceTint: Color(0xffb1008c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcf2aa5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff953e79),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffa4db),
      onSecondaryContainer: Color(0xff5e0d4a),
      tertiary: Color(0xffa5001d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffdb323c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f9),
      onBackground: Color(0xff24181f),
      surface: Color(0xfffff8f9),
      onSurface: Color(0xff24181f),
      surfaceVariant: Color(0xfff9dae9),
      onSurfaceVariant: Color(0xff56414c),
      outline: Color(0xff89707d),
      outlineVariant: Color(0xffdcbfcd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3a2c34),
      inverseOnSurface: Color(0xffffecf4),
      inversePrimary: Color(0xffffaede),
      primaryFixed: Color(0xffffd8ec),
      onPrimaryFixed: Color(0xff3b002d),
      primaryFixedDim: Color(0xffffaede),
      onPrimaryFixedVariant: Color(0xff87006a),
      secondaryFixed: Color(0xffffd8ec),
      onSecondaryFixed: Color(0xff3b002d),
      secondaryFixedDim: Color(0xffffaede),
      onSecondaryFixedVariant: Color(0xff782660),
      tertiaryFixed: Color(0xffffdad8),
      onTertiaryFixed: Color(0xff410006),
      tertiaryFixedDim: Color(0xffffb3af),
      onTertiaryFixedVariant: Color(0xff930019),
      surfaceDim: Color(0xffebd4de),
      surfaceBright: Color(0xfffff8f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f5),
      surfaceContainer: Color(0xffffe8f2),
      surfaceContainerHigh: Color(0xfff9e2ec),
      surfaceContainerHighest: Color(0xfff3dde7),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffaede),
      surfaceTint: Color(0xffffaede),
      onPrimary: Color(0xff60004b),
      primaryContainer: Color(0xffcf2aa5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffffaede),
      onSecondary: Color(0xff5c0b48),
      secondaryContainer: Color(0xff701e59),
      onSecondaryContainer: Color(0xffffc4e5),
      tertiary: Color(0xffffb3af),
      onTertiary: Color(0xff68000e),
      tertiaryContainer: Color(0xffdb323c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1b1017),
      onBackground: Color(0xfff3dde7),
      surface: Color(0xff1b1017),
      onSurface: Color(0xfff3dde7),
      surfaceVariant: Color(0xff56414c),
      onSurfaceVariant: Color(0xffdcbfcd),
      outline: Color(0xffa48997),
      outlineVariant: Color(0xff56414c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff3dde7),
      inverseOnSurface: Color(0xff3a2c34),
      inversePrimary: Color(0xffb1008c),
      primaryFixed: Color(0xffffd8ec),
      onPrimaryFixed: Color(0xff3b002d),
      primaryFixedDim: Color(0xffffaede),
      onPrimaryFixedVariant: Color(0xff87006a),
      secondaryFixed: Color(0xffffd8ec),
      onSecondaryFixed: Color(0xff3b002d),
      secondaryFixedDim: Color(0xffffaede),
      onSecondaryFixedVariant: Color(0xff782660),
      tertiaryFixed: Color(0xffffdad8),
      onTertiaryFixed: Color(0xff410006),
      tertiaryFixedDim: Color(0xffffb3af),
      onTertiaryFixedVariant: Color(0xff930019),
      surfaceDim: Color(0xff1b1017),
      surfaceBright: Color(0xff44353d),
      surfaceContainerLowest: Color(0xff160b11),
      surfaceContainerLow: Color(0xff24181f),
      surfaceContainer: Color(0xff291c23),
      surfaceContainerHigh: Color(0xff34262d),
      surfaceContainerHighest: Color(0xff3f3138),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
