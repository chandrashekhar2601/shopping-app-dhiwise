import SwiftUI

struct ShoppingCartView: View {
    @StateObject var shoppingCartViewModel = ShoppingCartViewModel()
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
                        Text(StringConstants.kLblShoppingBag)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(101.0))
                    }
                    .frame(width: getRelativeWidth(271.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    ZStack(alignment: .bottomLeading) {
                        VStack {
                            Text(StringConstants.kLblWishlist)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.bottom, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(82.0))
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .overlay(RoundedCorners().stroke(ColorConstants.Bluegray100, lineWidth: 1))
                        .background(RoundedCorners().fill(ColorConstants.Gray50))
                        VStack {
                            Text(StringConstants.kLblBag)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(31.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(10.0))
                            Divider()
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(2.0), alignment: .leading)
                                .background(ColorConstants.BlueA700)
                                .padding(.top, getRelativeHeight(17.0))
                        }
                        .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(35.0),
                               alignment: .bottomLeading)
                        .padding(.top, getRelativeHeight(16.1))
                        .padding(.trailing, getRelativeWidth(273.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(35.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(StringConstants.kMsgTomorrow7Am)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(20.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(206.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Image("img_arrowleft_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(9.0), height: getRelativeHeight(4.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(8.0))
                            .padding(.leading, getRelativeWidth(15.0))
                    }
                    .frame(width: getRelativeWidth(230.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(20.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(31.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    HStack {
                        ZStack {
                            Image("img_image_38x57")
                                .resizable()
                                .frame(width: getRelativeWidth(57.0),
                                       height: getRelativeHeight(38.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.bottom, getRelativeHeight(25.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(89.0), height: getRelativeWidth(89.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Gray51))
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.bottom, getRelativeHeight(17.0))
                        .padding(.leading, getRelativeWidth(19.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblShimlaApple)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(109.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Text(StringConstants.kLbl1Kg)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray200)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(25.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kLbl2)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.BlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl325)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(43.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(17.0))
                            }
                            .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(18.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(75.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(18.0))
                        VStack(alignment: .trailing, spacing: 0) {
                            Image("img_icon_black_900")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeWidth(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading)
                                .padding(.leading)
                            HStack {
                                Image("img_icon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Spacer()
                                Text(StringConstants.kLbl1)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(24.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.BlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(9.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Spacer()
                                Image("img_icon_blue_a700")
                                    .resizable()
                                    .frame(width: getRelativeWidth(30.0),
                                           height: getRelativeWidth(30.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(30.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(49.0))
                        }
                        .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(91.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(11.0))
                        .padding(.leading, getRelativeWidth(40.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(120.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(120.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblPaymentDetails)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray800)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(33.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    ZStack(alignment: .bottomLeading) {
                        VStack {
                            HStack {
                                Text(StringConstants.kLblTotalMrp)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl997)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(348.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                            Divider()
                                .frame(width: getRelativeWidth(354.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Bluegray100)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(21.0))
                            HStack {
                                Text(StringConstants.kLblStoreCredits)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(95.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl397)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(348.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                            Divider()
                                .frame(width: getRelativeWidth(354.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Bluegray100)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(21.0))
                            HStack {
                                Text(StringConstants.kLblSubTotal)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl600)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(41.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(348.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                            Divider()
                                .frame(width: getRelativeWidth(354.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Bluegray100)
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(21.0))
                            HStack {
                                Text(StringConstants.kMsgShippingCharge)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(131.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl110)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(348.0), height: getRelativeHeight(17.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                            Divider()
                                .frame(width: getRelativeWidth(354.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                                .background(ColorConstants.Bluegray100)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(21.0))
                            HStack {
                                Text(StringConstants.kLblEstimatedGst)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(108.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblFree)
                                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(16.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(348.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(262.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Black9000c, radius: 42, x: 0, y: 4)
                        .padding(.bottom, getRelativeHeight(30.0))
                        HStack {
                            Text(StringConstants.kLblGrandTotal)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Bluegray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(25.0))
                            Text(StringConstants.kLbl710)
                                .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.BlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(39.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(210.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(40.0),
                               alignment: .bottomLeading)
                        .background(RoundedCorners(bottomLeft: 10.0, bottomRight: 10.0)
                            .fill(ColorConstants.Blue50))
                        .padding(.top, getRelativeHeight(252.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(292.0),
                           alignment: .center)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblPlaceOrder)
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
                                .padding(.top, getRelativeHeight(30.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(30.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(372.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(25.0))
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

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
    }
}
