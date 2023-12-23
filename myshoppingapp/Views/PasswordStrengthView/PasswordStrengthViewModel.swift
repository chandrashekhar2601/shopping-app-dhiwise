import Foundation
import SwiftUI

class PasswordStrengthViewModel: ObservableObject {
    @Published var emailText: String = ""
    @Published var isValidEmailText: Bool = true
    @Published var group10198Text: String = ""
    @Published var isValidGroup10198Text: Bool = true
    @Published var group10198oneText: String = ""
    @Published var isValidGroup10198oneText: Bool = true
}
