import SwiftUI

struct RefundManagementView: View {
    @StateObject var refundManagementViewModel = RefundManagementViewModel()
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
                        Text(StringConstants.kLblReturnOrder)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(109.0))
                    }
                    .frame(width: getRelativeWidth(264.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(26.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    HStack {
                        Image("img_unsplashenrurz")
                            .resizable()
                            .frame(width: getRelativeWidth(86.0), height: getRelativeWidth(86.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Text(StringConstants.kMsgLogoPrintedT)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(145.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl997)
                                    .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Red700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(4.0))
                            Text(StringConstants.kMsgOrderId1232)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(117.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kLblQty01)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(46.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kMsgReturnDate24)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(164.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(226.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(86.0),
                               alignment: .center)
                    }
                    .frame(width: getRelativeWidth(392.0), height: getRelativeHeight(86.0),
                           alignment: .center)
                    .padding(.trailing, getRelativeWidth(5.0))
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(103.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(37.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgReasonForRetu)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                    Text(StringConstants.kMsgLoremIpsumDol4)
                        .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(370.0), height: getRelativeHeight(66.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(104.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(1.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblPickupAddress)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                    HStack {
                        Image("img_vector_blue_a700_20x19")
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
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(73.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(31.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(1.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(23.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblRefundDetails)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(18.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    HStack {
                        Text(StringConstants.kLblYourRefund)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(82.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl997)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    HStack {
                        Text(StringConstants.kMsgRefundTexes)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(173.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl000)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    HStack {
                        Text(StringConstants.kMsgRefundSubtotal)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl997)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Red700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(18.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(17.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgContinueShoppi)
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
                                .padding(.top, getRelativeHeight(126.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(126.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(263.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(17.0))
                .padding(.bottom, getRelativeHeight(20.0))
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

struct RefundManagementView_Previews: PreviewProvider {
    static var previews: some View {
        RefundManagementView()
    }
}
