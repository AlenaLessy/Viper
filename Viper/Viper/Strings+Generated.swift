// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Constants {
  /// Турецкое алинклюзив обеспечено
  internal static let countryFiveDescription = Constants.tr("Localizable", "countryFiveDescription", fallback: "Турецкое алинклюзив обеспечено")
  /// Турция
  internal static let countryFiveName = Constants.tr("Localizable", "countryFiveName", fallback: "Турция")
  /// Помимо моря просто необходимо полюбоваться пирамидами
  internal static let countryFourDescription = Constants.tr("Localizable", "countryFourDescription", fallback: "Помимо моря просто необходимо полюбоваться пирамидами")
  /// Египет
  internal static let countryFourName = Constants.tr("Localizable", "countryFourName", fallback: "Египет")
  /// Теплое солнышко, море, нетронутая человеком природа
  internal static let countryOneDescription = Constants.tr("Localizable", "countryOneDescription", fallback: "Теплое солнышко, море, нетронутая человеком природа")
  /// Малазия
  internal static let countryOneName = Constants.tr("Localizable", "countryOneName", fallback: "Малазия")
  /// CountryTableViewCell
  internal static let countryTableViewCellIdentifier = Constants.tr("Localizable", "countryTableViewCellIdentifier", fallback: "CountryTableViewCell")
  /// Самые инстаграмные пляжи
  internal static let countryThreeDescription = Constants.tr("Localizable", "countryThreeDescription", fallback: "Самые инстаграмные пляжи")
  /// Бали
  internal static let countryThreeName = Constants.tr("Localizable", "countryThreeName", fallback: "Бали")
  /// Рисовые поля, песчаные пляжи и исторические объекты
  internal static let countryTwoDescription = Constants.tr("Localizable", "countryTwoDescription", fallback: "Рисовые поля, песчаные пляжи и исторические объекты")
  /// Тайланд
  internal static let countryTwoName = Constants.tr("Localizable", "countryTwoName", fallback: "Тайланд")
  /// CappaWood
  internal static let fivehotelsNameOne = Constants.tr("Localizable", "fivehotelsNameOne", fallback: "CappaWood")
  /// HighZing
  internal static let fivehotelsNameThree = Constants.tr("Localizable", "fivehotelsNameThree", fallback: "HighZing")
  /// Hexabeat
  internal static let fivehotelsNameTwo = Constants.tr("Localizable", "fivehotelsNameTwo", fallback: "Hexabeat")
  /// MadStar
  internal static let fourhotelsNameOne = Constants.tr("Localizable", "fourhotelsNameOne", fallback: "MadStar")
  /// SparkRiser
  internal static let fourhotelsNameThree = Constants.tr("Localizable", "fourhotelsNameThree", fallback: "SparkRiser")
  /// PowerPlex
  internal static let fourhotelsNameTwo = Constants.tr("Localizable", "fourhotelsNameTwo", fallback: "PowerPlex")
  /// HotelsTableViewCell
  internal static let hotelsTableViewCellIdentifier = Constants.tr("Localizable", "hotelsTableViewCellIdentifier", fallback: "HotelsTableViewCell")
  /// Luxuri beatch 5*
  internal static let onehotelsNameOne = Constants.tr("Localizable", "onehotelsNameOne", fallback: "Luxuri beatch 5*")
  /// Tulip
  internal static let onehotelsNameThree = Constants.tr("Localizable", "onehotelsNameThree", fallback: "Tulip")
  /// Park Inn
  internal static let onehotelsNameTwo = Constants.tr("Localizable", "onehotelsNameTwo", fallback: "Park Inn")
  /// Posada Lustrio
  internal static let threehotelsNameOne = Constants.tr("Localizable", "threehotelsNameOne", fallback: "Posada Lustrio")
  /// YoungSky
  internal static let threehotelsNameThree = Constants.tr("Localizable", "threehotelsNameThree", fallback: "YoungSky")
  /// MettleMade
  internal static let threehotelsNameTwo = Constants.tr("Localizable", "threehotelsNameTwo", fallback: "MettleMade")
  /// Crosby Street
  internal static let twohotelsNameOne = Constants.tr("Localizable", "twohotelsNameOne", fallback: "Crosby Street")
  /// Willow Inn
  internal static let twoHotelsNameThree = Constants.tr("Localizable", "twoHotelsNameThree", fallback: "Willow Inn")
  /// ARIA Resort
  internal static let twohotelsNameTwo = Constants.tr("Localizable", "twohotelsNameTwo", fallback: "ARIA Resort")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Constants {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
