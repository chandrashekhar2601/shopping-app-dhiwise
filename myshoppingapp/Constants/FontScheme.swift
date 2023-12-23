import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kGilroyMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroyMedium, size: size)
    }

    static func kGilroySemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroySemiBold, size: size)
    }

    static func kGilroyRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroyRegular, size: size)
    }

    static func kGilroyBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kGilroyBold, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kJosefinSansRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kJosefinSansRegular, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kRobotoMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoMedium, size: size)
    }

    static func kRobotoRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRegular, size: size)
    }

    static func kSFProDisplayBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayBold, size: size)
    }

    static func kSFProDisplayThin(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayThin, size: size)
    }

    static func kSFProDisplayRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayRegular, size: size)
    }

    static func kSFProTextBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kGilroyMedium":
            result = self.kGilroyMedium(size: size)
        case "kGilroySemiBold":
            result = self.kGilroySemiBold(size: size)
        case "kGilroyRegular":
            result = self.kGilroyRegular(size: size)
        case "kGilroyBold":
            result = self.kGilroyBold(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kJosefinSansRegular":
            result = self.kJosefinSansRegular(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kRobotoMedium":
            result = self.kRobotoMedium(size: size)
        case "kRobotoRegular":
            result = self.kRobotoRegular(size: size)
        case "kSFProDisplayBold":
            result = self.kSFProDisplayBold(size: size)
        case "kSFProDisplayThin":
            result = self.kSFProDisplayThin(size: size)
        case "kSFProDisplayRegular":
            result = self.kSFProDisplayRegular(size: size)
        case "kSFProTextBold":
            result = self.kSFProTextBold(size: size)
        default:
            result = self.kGilroyMedium(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kGilroyMedium: String = "Gilroy-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kGilroySemiBold: String = "Gilroy-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kGilroyRegular: String = "Gilroy-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kGilroyBold: String = "Gilroy-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "Inter-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "Inter-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kJosefinSansRegular: String = "JosefinSans-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoMedium: String = "Roboto-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRegular: String = "Roboto-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayBold: String = "SFProDisplay-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayThin: String = "SFProDisplay-Thin"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayRegular: String = "SFProDisplay-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextBold: String = "SFProText-Bold"
    }
}
