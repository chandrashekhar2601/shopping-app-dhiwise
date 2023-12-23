import SwiftUI

struct SignUpView: View {
    @StateObject var signUpViewModel = SignUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    HStack {
                        HStack {
                            Image("img_leftside")
                                .resizable()
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .clipShape(Capsule())
                            Spacer()
                            Image("img_rightside")
                                .resizable()
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(11.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.bottom, getRelativeHeight(4.0))
                        }
                        .frame(width: getRelativeWidth(392.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(392.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(5.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(21.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Image("img_arrowleft")
                            .resizable()
                            .frame(width: getRelativeWidth(12.0), height: getRelativeWidth(12.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kLblSignUp)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(137.0))
                    }
                    .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                    Text(StringConstants.kMsgCreateYourAcc)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(231.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(41.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(89.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblFirstName)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterFirstNam,
                                          text: $signUpViewModel.group10198Text)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: signUpViewModel.group10198Text) { newValue in

                                signUpViewModel.isValidGroup10198Text = newValue
                                    .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(9.0))
                            if !signUpViewModel.isValidGroup10198Text {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(396.0),
                                           height: getRelativeHeight(44.0), alignment: .leading)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblLastName)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Group {
                            HStack {
                                TextField(StringConstants.kLblEnterLastName,
                                          text: $signUpViewModel.group10198oneText)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: signUpViewModel.group10198oneText) { newValue in

                                signUpViewModel.isValidGroup10198oneText = newValue
                                    .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(9.0))
                            if !signUpViewModel.isValidGroup10198oneText {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(396.0),
                                           height: getRelativeHeight(44.0), alignment: .leading)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0))
                    .padding(.top, getRelativeHeight(20.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblEmailId2)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Group {
                            HStack {
                                TextField(StringConstants.kLblEnterEmailId,
                                          text: $signUpViewModel.group10198twoText)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
                                    .keyboardType(.emailAddress)
                            }
                            .onChange(of: signUpViewModel.group10198twoText) { newValue in

                                signUpViewModel.isValidGroup10198twoText = newValue
                                    .isValidEmail(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(9.0))
                            if !signUpViewModel.isValidGroup10198twoText {
                                Text("Please enter valid email.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(396.0),
                                           height: getRelativeHeight(44.0), alignment: .leading)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0))
                    .padding(.top, getRelativeHeight(20.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblMobileNumber)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterMobileNu,
                                          text: $signUpViewModel.group10198threeText)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
                                    .keyboardType(.phonePad)
                            }
                            .onChange(of: signUpViewModel.group10198threeText) { newValue in

                                signUpViewModel.isValidGroup10198threeText = newValue
                                    .isValidPhone(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(44.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(9.0))
                            if !signUpViewModel.isValidGroup10198threeText {
                                Text("Please enter valid phone number.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(396.0),
                                           height: getRelativeHeight(44.0), alignment: .leading)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0))
                    .padding(.top, getRelativeHeight(20.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(339.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(35.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblPassword)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(16.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    Group {
                        HStack {
                            SecureField(StringConstants.kLblEnterPassword,
                                        text: $signUpViewModel.group10198fourText)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Bluegray200)
                                .padding()
                                .keyboardType(.default)
                            Image("img_vector_bluegray_200")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeHeight(13.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(13.0))
                            Spacer()
                        }
                        .onChange(of: signUpViewModel.group10198fourText) { newValue in

                            signUpViewModel.isValidGroup10198fourText = newValue
                                .isValidPassword(isMandatory: true)
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(44.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                bottomRight: 6.0)
                                .stroke(ColorConstants.Bluegray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0)
                                .fill(ColorConstants.WhiteA700))
                        if !signUpViewModel.isValidGroup10198fourText {
                            Text("Please enter valid password.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .frame(width: getRelativeWidth(396.0),
                                       height: getRelativeHeight(44.0), alignment: .center)
                        }
                    }
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCreateAccount)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(396.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.BlueA700))
                                .padding(.top, getRelativeHeight(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(24.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(118.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(9.0))
                .padding(.horizontal, getRelativeWidth(16.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Gray50)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray50)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
