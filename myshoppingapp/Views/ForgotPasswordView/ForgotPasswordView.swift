import SwiftUI

struct ForgotPasswordView: View {
    @StateObject var forgotPasswordViewModel = ForgotPasswordViewModel()
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
                            .padding(.vertical, getRelativeHeight(2.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kLblForgotPassword)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(88.0))
                    }
                    .frame(width: getRelativeWidth(284.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    Image("img_forgot1trace")
                        .resizable()
                        .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(100.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(151.0))
                    Text(StringConstants.kMsgSubmitYourEma)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(376.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(40.0))
                        .padding(.horizontal, getRelativeWidth(9.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblEmail)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterYourEmai,
                                          text: $forgotPasswordViewModel.group10198Text)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
                                    .keyboardType(.emailAddress)
                            }
                            .onChange(of: forgotPasswordViewModel.group10198Text) { newValue in

                                forgotPasswordViewModel.isValidGroup10198Text = newValue
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
                            if !forgotPasswordViewModel.isValidGroup10198Text {
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
                    .padding(.top, getRelativeHeight(32.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblResetPassword)
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
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(358.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(133.0))
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

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
