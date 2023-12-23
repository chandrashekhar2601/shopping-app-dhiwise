import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var group10198Text: String = ""
    @Published var isValidGroup10198Text: Bool = true
    @Published var group10198oneText: String = ""
    @Published var isValidGroup10198oneText: Bool = true
    @Published var group10198twoText: String = ""
    @Published var isValidGroup10198twoText: Bool = true
    @Published var group10198threeText: String = ""
    @Published var isValidGroup10198threeText: Bool = true
    @Published var group10198fourText: String = ""
    @Published var isValidGroup10198fourText: Bool = true
}
