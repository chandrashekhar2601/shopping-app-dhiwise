import SwiftUI

struct GuestLoginView: View {
    @StateObject var guestLoginViewModel = GuestLoginViewModel()
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
                            .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(3.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kMsgLoginAsAGues)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(87.0))
                    }
                    .frame(width: getRelativeWidth(285.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                    Text(StringConstants.kLblEmail)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(39.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(79.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    Group {
                        HStack {
                            TextField(StringConstants.kMsgEnterYourEmai,
                                      text: $guestLoginViewModel.inputfieldText)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Bluegray200)
                                .padding()
                                .keyboardType(.emailAddress)
                        }
                        .onChange(of: guestLoginViewModel.inputfieldText) { newValue in

                            guestLoginViewModel.isValidInputfieldText = newValue
                                .isValidEmail(isMandatory: true)
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
                        if !guestLoginViewModel.isValidInputfieldText {
                            Text("Please enter valid email.")
                                .foregroundColor(Color.red)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .frame(width: getRelativeWidth(396.0),
                                       height: getRelativeHeight(44.0), alignment: .center)
                        }
                    }
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(44.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(8.0))
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
                                        text: $guestLoginViewModel.inputfieldoneText)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Bluegray200)
                                .padding()
                                .keyboardType(.default)
                            Image("img_vector_bluegray_200_13x16")
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
                        .onChange(of: guestLoginViewModel.inputfieldoneText) { newValue in

                            guestLoginViewModel.isValidInputfieldoneText = newValue
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
                        if !guestLoginViewModel.isValidInputfieldoneText {
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
                .padding(.top, getRelativeHeight(8.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .trailing, spacing: 0) {
                    Text(StringConstants.kMsgForgotPassword)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.BlueA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(14.0),
                               alignment: .topLeading)
                        .padding(.leading)
                        .padding(.leading)
                        .padding(.trailing, getRelativeWidth(7.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(14.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(21.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSignIn)
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
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(26.0))
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

struct GuestLoginView_Previews: PreviewProvider {
    static var previews: some View {
        GuestLoginView()
    }
}
