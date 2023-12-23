import SwiftUI

struct ExpressDeliveryView: View {
    @StateObject var expressDeliveryViewModel = ExpressDeliveryViewModel()
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
                        Text(StringConstants.kLblShoppingCart)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(99.0))
                    }
                    .frame(width: getRelativeWidth(274.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                    Text(StringConstants.kLblYourOrder)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(40.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(82.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
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
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(16.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kMsgExpressDeliver)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(134.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(5.0))
                            Spacer()
                            Toggle("", isOn: $expressDeliveryViewModel.isToggle)
                                .toggleStyle(SwitchToggleStyle(tint: ColorConstants.Gray50))
                                .frame(width: getRelativeWidth(45.0),
                                       height: getRelativeHeight(25.0), alignment: .center)
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        HStack {
                            Text(StringConstants.kMsgDeliveryCharge)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(125.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl250)
                                .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(41.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(17.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            Text(StringConstants.kMsgDeliveryDateA)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(171.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kMsgApril302022)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(143.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(16.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(25.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(108.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(20.0))
                    HStack {
                        Text(StringConstants.kLblBillingAddress)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblChange)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(19.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(21.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(290.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(21.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Image("img_vector")
                            .resizable()
                            .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(25.0))
                        Text(StringConstants.kMsg4517Washington)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(40.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(278.0), height: getRelativeHeight(45.0),
                           alignment: .leading)
                    .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(45.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(13.0))
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
                    Text(StringConstants.kLblPaymentDetails2)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(18.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(23.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    HStack {
                        Text(StringConstants.kLblTotalMrp)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl550)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(16.0))
                    HStack {
                        Text(StringConstants.kLblTexesCharges)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(118.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl000)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    HStack {
                        Text(StringConstants.kMsgDeliveryCharge)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl250)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(17.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    HStack {
                        Text(StringConstants.kLblDiscount)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl2002)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(17.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    HStack {
                        Text(StringConstants.kLblGrandTotal)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(16.0))
                        Spacer()
                        Text(StringConstants.kLbl1000)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(9.0))
                            .padding(.trailing, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(37.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.Blue50))
                    .padding(.top, getRelativeHeight(21.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgProceedToChec)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(396.0),
                                       height: getRelativeHeight(50.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.BlueA700))
                                .padding(.top, getRelativeHeight(55.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(55.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(284.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(16.0))
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

struct ExpressDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        ExpressDeliveryView()
    }
}
