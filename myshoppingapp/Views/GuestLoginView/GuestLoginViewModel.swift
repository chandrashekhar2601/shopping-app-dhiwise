import Foundation
import SwiftUI

class GuestLoginViewModel: ObservableObject {
    @Published var inputfieldText: String = ""
    @Published var isValidInputfieldText: Bool = true
    @Published var inputfieldoneText: String = ""
    @Published var isValidInputfieldoneText: Bool = true
}
