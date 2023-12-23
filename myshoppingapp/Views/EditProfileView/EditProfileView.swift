import SwiftUI

struct EditProfileView: View {
    @StateObject var editProfileViewModel = EditProfileViewModel()
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
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.bottom, getRelativeHeight(6.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kLblEditProfile)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(122.0))
                    }
                    .frame(width: getRelativeWidth(251.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(26.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    ZStack(alignment: .topTrailing) {
                        Image("img_ellipse5")
                            .resizable()
                            .frame(width: getRelativeWidth(150.0), height: getRelativeWidth(150.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                        Button(action: {}, label: {
                            Image("img_group10687")
                        })
                        .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(30.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0, bottomLeft: 15.0,
                                                   bottomRight: 15.0)
                                .fill(ColorConstants.BlueA700))
                        .padding(.bottom, getRelativeHeight(115.0))
                        .padding(.leading, getRelativeWidth(118.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(150.0), height: getRelativeWidth(150.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(123.0))
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblFirstName)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(78.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kLblMichelle,
                                          text: $editProfileViewModel.group10198Text)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
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
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(4.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblLastName)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(79.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kLblRock,
                                          text: $editProfileViewModel.group10198oneText)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
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
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(20.0))
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
                                              text: $editProfileViewModel.emailText)
                                        .font(FontScheme
                                            .kGilroyMedium(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Bluegray200)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: editProfileViewModel.emailText) { newValue in

                                    editProfileViewModel.isValidEmailText = newValue
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
                                if !editProfileViewModel.isValidEmailText {
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
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(20.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblWebsite)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(61.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kMsgMichellerockCo,
                                          text: $editProfileViewModel.weburlText)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
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
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(20.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblMobileNumber)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(112.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.trailing)
                            HStack {
                                TextField(StringConstants.kLbl12323232323,
                                          text: $editProfileViewModel.mobilenoText)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .padding()
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
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(69.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(20.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(434.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0))
                    .padding(.top, getRelativeHeight(24.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSave)
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
                                .padding(.horizontal, getRelativeWidth(1.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(1.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(682.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(37.0))
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

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
