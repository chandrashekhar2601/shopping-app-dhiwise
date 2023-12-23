import SwiftUI

struct ItemAvailabilityView: View {
    @StateObject var itemAvailabilityViewModel = ItemAvailabilityViewModel()
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
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.bottom, getRelativeHeight(7.0))
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
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    RowgroupCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), alignment: .center)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(144.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(21.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgPromoCodeAnd)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(214.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(18.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(31.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    HStack {
                        Text(StringConstants.kMsgEnterPromoCod)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray200)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.bottom, getRelativeHeight(14.0))
                            .padding(.leading, getRelativeWidth(12.0))
                        Spacer()
                        Text(StringConstants.kLblApply)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(46.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.bottom, getRelativeHeight(14.0))
                            .padding(.trailing, getRelativeWidth(12.0))
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
                    HStack {
                        Text(StringConstants.kLblTotalSaving)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl2)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
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
                        Text(StringConstants.kLbl997)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(364.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
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
                        Text(StringConstants.kMsgShippingCharge)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblFree)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(16.0),
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
                        Text(StringConstants.kLbl797)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(18.0),
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
                                .padding(.top, getRelativeHeight(126.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .topLeading)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(126.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(462.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(11.0))
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

struct ItemAvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        ItemAvailabilityView()
    }
}
