import Foundation
import SwiftUI

class EditProfileViewModel: ObservableObject {
    @Published var group10198Text: String = ""
    @Published var group10198oneText: String = ""
    @Published var emailText: String = ""
    @Published var isValidEmailText: Bool = true
    @Published var weburlText: String = ""
    @Published var mobilenoText: String = ""
}
