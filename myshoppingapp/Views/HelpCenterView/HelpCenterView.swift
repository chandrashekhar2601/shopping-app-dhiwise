import SwiftUI

struct HelpCenterView: View {
    @StateObject var helpCenterViewModel = HelpCenterViewModel()
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
                            .padding(.vertical, getRelativeHeight(3.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kLblHelpCenter)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(114.0))
                    }
                    .frame(width: getRelativeWidth(259.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(28.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgQWhatIsThis)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(298.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kMsgAThisAppWor)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(47.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                        Spacer()
                        Image("img_arrowright_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(59.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(584.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(35.0))
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

struct HelpCenterView_Previews: PreviewProvider {
    static var previews: some View {
        HelpCenterView()
    }
}
