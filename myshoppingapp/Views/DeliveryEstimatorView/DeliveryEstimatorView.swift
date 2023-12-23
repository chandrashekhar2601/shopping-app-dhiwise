import SwiftUI

struct DeliveryEstimatorView: View {
    @StateObject var deliveryEstimatorViewModel = DeliveryEstimatorViewModel()
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
                    HStack {
                        Image("img_arrowleft")
                            .resizable()
                            .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(8.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Spacer()
                        Text(StringConstants.kLblOrderTracking)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Image("img_morevertical")
                            .resizable()
                            .frame(width: getRelativeWidth(2.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.trailing, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(390.0), height: getRelativeHeight(27.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.leading, getRelativeWidth(6.0))
                    HStack {
                        HStack {
                            Image("img_unsplashenrurz")
                                .resizable()
                                .frame(width: getRelativeWidth(86.0),
                                       height: getRelativeWidth(86.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                           bottomLeft: 3.0, bottomRight: 3.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgLogoPrintedT)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(145.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kLblPrada)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(39.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Text(StringConstants.kLblSizeM)
                                        .font(FontScheme
                                            .kGilroyMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .padding(.bottom, getRelativeHeight(6.0))
                                        .padding(.top, getRelativeHeight(5.0))
                                        .foregroundColor(ColorConstants.Bluegray400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(38.0),
                                               height: getRelativeHeight(24.0), alignment: .center)
                                        .background(ColorConstants.WhiteA700)
                                    Spacer()
                                    HStack {
                                        Text(StringConstants.kLblColor)
                                            .font(FontScheme
                                                .kGilroyMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(33.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(10.0),
                                                   height: getRelativeWidth(10.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                    bottomLeft: 5.0,
                                                                    bottomRight: 5.0)
                                                    .stroke(ColorConstants.Bluegray400,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                       bottomLeft: 5.0,
                                                                       bottomRight: 5.0)
                                                    .fill(ColorConstants.DeepPurple50))
                                            .padding(.leading, getRelativeWidth(4.0))
                                    }
                                    .frame(width: getRelativeWidth(47.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                               bottomLeft: 3.0, bottomRight: 3.0)
                                            .fill(ColorConstants.Gray51))
                                    Spacer()
                                    Text(StringConstants.kLblQty04)
                                        .font(FontScheme
                                            .kGilroyMedium(size: getRelativeHeight(12.0)))
                                        .fontWeight(.medium)
                                        .padding(.bottom, getRelativeHeight(6.0))
                                        .padding(.top, getRelativeHeight(5.0))
                                        .foregroundColor(ColorConstants.Bluegray400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(43.0),
                                               height: getRelativeHeight(24.0), alignment: .center)
                                        .background(ColorConstants.Gray51)
                                }
                                .frame(width: getRelativeWidth(160.0),
                                       height: getRelativeHeight(24.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(8.0))
                            }
                            .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(72.0),
                                   alignment: .bottom)
                            .padding(.leading, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(258.0), height: getRelativeHeight(86.0),
                               alignment: .center)
                        Spacer()
                        VStack(alignment: .trailing, spacing: 0) {
                            Text(StringConstants.kLbl1050)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.leading)
                                .padding(.leading)
                            Text(StringConstants.kLbl550)
                                .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(46.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(46.0), height: getRelativeHeight(39.0),
                               alignment: .bottom)
                        .padding(.vertical, getRelativeHeight(37.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(86.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(35.0))
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(212.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgArrivingWednes)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(26.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    ZStack(alignment: .center) {
                        HStack {
                            Button(action: {}, label: {
                                Image("img_group2447")
                            })
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                    bottomRight: 12.0)
                                    .stroke(ColorConstants.Gray50,
                                            lineWidth: 3))
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.BlueA700))
                            Text(StringConstants.kMsgOrderedSaturda)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Blue800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(193.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(233.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(315.0))
                        .padding(.trailing, getRelativeWidth(163.0))
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_group2447")
                                })
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                        bottomLeft: 12.0, bottomRight: 12.0)
                                        .stroke(ColorConstants.Gray50,
                                                lineWidth: 3))
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.BlueA700))
                                .padding(.bottom, getRelativeHeight(49.0))
                                Spacer()
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kMsgShippedSunday)
                                        .font(FontScheme
                                            .kGilroySemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Blue800)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(181.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.trailing)
                                    Text(StringConstants.kMsgLoremIpsumDol3)
                                        .font(FontScheme
                                            .kGilroyRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Bluegray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(349.0),
                                               height: getRelativeHeight(38.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(13.0))
                                }
                                .frame(width: getRelativeWidth(349.0),
                                       height: getRelativeHeight(68.0), alignment: .bottom)
                                .padding(.top, getRelativeHeight(4.0))
                            }
                            .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(73.0),
                                   alignment: .leading)
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                            bottomLeft: 10.0, bottomRight: 10.0)
                                            .stroke(ColorConstants.Bluegray100,
                                                    lineWidth: 3))
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.Gray50))
                                Text(StringConstants.kMsgOutForDeliver)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray200)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(114.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(18.0))
                            }
                            .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(67.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(389.0), height: getRelativeHeight(160.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(89.0))
                        .padding(.bottom, getRelativeHeight(90.0))
                        .padding(.trailing, getRelativeWidth(7.0))
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                        bottomLeft: 10.0, bottomRight: 10.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 3))
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Gray50))
                            Text(StringConstants.kMsgArrivingWednes)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray200)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(148.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(18.0))
                        }
                        .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(20.0),
                               alignment: .bottomLeading)
                        .padding(.top, getRelativeHeight(319.0))
                        .padding(.trailing, getRelativeWidth(208.0))
                        ZStack(alignment: .topLeading) {
                            Divider()
                                .frame(width: getRelativeWidth(4.0),
                                       height: getRelativeHeight(322.0), alignment: .leading)
                                .background(ColorConstants.Bluegray100)
                            Divider()
                                .frame(width: getRelativeWidth(4.0),
                                       height: getRelativeHeight(124.0), alignment: .topLeading)
                                .background(ColorConstants.BlueA700)
                                .padding(.bottom, getRelativeHeight(198.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(322.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(10.0))
                        .padding(.trailing, getRelativeWidth(382.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(339.0),
                           alignment: .center)
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(27.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(367.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(22.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblAddress)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                    HStack {
                        Image("img_vector")
                            .resizable()
                            .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(22.0))
                        Text(StringConstants.kMsg4517Washington)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(322.0), height: getRelativeHeight(37.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(352.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(75.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(21.0))
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

struct DeliveryEstimatorView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryEstimatorView()
    }
}
