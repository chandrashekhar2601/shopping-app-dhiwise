import SwiftUI

struct WaitingListView: View {
    @StateObject var waitingListViewModel = WaitingListViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
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
                    .padding(.vertical, getRelativeHeight(30.0))
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(229.0),
                       alignment: .topLeading)
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0)
                        .fill(ColorConstants.Blue50))
                VStack {
                    Image("img_consoleplaysta")
                        .resizable()
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(233.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(52.0))
                    Image("img_swipe")
                        .resizable()
                        .frame(width: getRelativeWidth(33.0), height: getRelativeHeight(5.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(52.0))
                    Text(StringConstants.kMsgSonyCfi1108a0)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(315.0), height: getRelativeHeight(45.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(32.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    Text(StringConstants.kLblSpecialPrice)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        Text(StringConstants.kLbl49999)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl42Off)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(4.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(17.0))
                    Text(StringConstants.kLblDescription)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(16.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(40.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    Text(StringConstants.kMsgGreenApplesHa)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(93.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(26.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblJoinWaitlist)
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
                                .padding(.top, getRelativeHeight(31.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(31.0))
                }
                .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(671.0),
                       alignment: .center)
                .padding(.horizontal, getRelativeWidth(16.0))
            }
            .hideNavigationBar()
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

struct WaitingListView_Previews: PreviewProvider {
    static var previews: some View {
        WaitingListView()
    }
}
