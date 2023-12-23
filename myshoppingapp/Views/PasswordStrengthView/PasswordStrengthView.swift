import SwiftUI

struct PasswordStrengthView: View {
    @StateObject var passwordStrengthViewModel = PasswordStrengthViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Group {
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
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblEmailId)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(59.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.trailing)
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgMichellerockGm,
                                              text: $passwordStrengthViewModel.emailText)
                                        .font(FontScheme
                                            .kGilroyMedium(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Bluegray200)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: passwordStrengthViewModel.emailText) { newValue in

                                    passwordStrengthViewModel.isValidEmailText = newValue
                                        .isValidEmail(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(396.0),
                                       height: getRelativeHeight(44.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                        bottomLeft: 6.0,
                                                        bottomRight: 6.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(9.0))
                                if !passwordStrengthViewModel.isValidEmailText {
                                    Text("Please enter valid email.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kGilroyMedium(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(396.0),
                                               height: getRelativeHeight(44.0), alignment: .leading)
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(42.0))
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(133.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(12.0))
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
                                            text: $passwordStrengthViewModel.group10198Text)
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
                            .onChange(of: passwordStrengthViewModel.group10198Text) { newValue in

                                passwordStrengthViewModel.isValidGroup10198Text = newValue
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
                            if !passwordStrengthViewModel.isValidGroup10198Text {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(396.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(44.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgConfirmPasswor)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(16.0),
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
                                            text: $passwordStrengthViewModel.group10198oneText)
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
                            .onChange(of: passwordStrengthViewModel.group10198oneText) { newValue in

                                passwordStrengthViewModel.isValidGroup10198oneText = newValue
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
                            if !passwordStrengthViewModel.isValidGroup10198oneText {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(396.0),
                                           height: getRelativeHeight(44.0), alignment: .center)
                            }
                        }
                        HStack {
                            Text(StringConstants.kMsgPasswordStreng)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(141.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                            Spacer()
                            HStack {
                                Image("img_vector_amber_700")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblAverage)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Amber700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(54.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(17.0))
                        LinearProgress(percentage: 0.43, backgroundColor: ColorConstants.Gray201,
                                       foregroundColor: LinearGradient(gradient: Gradient(colors: [ColorConstants
                                               .Amber700]),
                                       startPoint: .leading,
                                       endPoint: .trailing))
                            .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(4.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray201)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(94.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgYourPasswordI)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(223.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(14.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(9.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    VStack {
                        HStack {
                            Image("img_vector_green_400")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeHeight(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgPasswordMustC)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(308.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(16.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(32.0))
                        .padding(.trailing, getRelativeWidth(28.0))
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(22.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    VStack(alignment: .trailing, spacing: 0) {
                        HStack {
                            Image("img_vector_green_400")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeHeight(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgPasswordMustC2)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(322.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(350.0), height: getRelativeHeight(16.0),
                               alignment: .trailing)
                        .padding(.horizontal, getRelativeWidth(14.0))
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                Group {
                    VStack {
                        HStack {
                            Image("img_vector_green_400")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeHeight(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgPasswordMustC3)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(316.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(16.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(32.0))
                        .padding(.trailing, getRelativeWidth(20.0))
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(22.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image("img_vector_green_400")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeHeight(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgPasswordMustC4)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(244.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(272.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(32.0))
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    VStack(alignment: .trailing, spacing: 0) {
                        HStack {
                            Image("img_vector_green_400")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeHeight(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgPasswordMustC5)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(353.0), height: getRelativeHeight(16.0),
                               alignment: .trailing)
                        .padding(.horizontal, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(21.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
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

struct PasswordStrengthView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordStrengthView()
    }
}
