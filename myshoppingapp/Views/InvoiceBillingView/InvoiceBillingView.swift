import SwiftUI

struct InvoiceBillingView: View {
    @StateObject var invoiceBillingViewModel = InvoiceBillingViewModel()
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
                            .frame(width: getRelativeWidth(12.0), height: getRelativeWidth(12.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(6.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Spacer()
                        Text(StringConstants.kLblOrderDetails)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Image("img_morevertical")
                            .resizable()
                            .frame(width: getRelativeWidth(2.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(4.0))
                            .padding(.trailing, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(390.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.leading, getRelativeWidth(6.0))
                    HStack {
                        Text(StringConstants.kLblOrderId)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl212040348792)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(41.0))
                    HStack {
                        Text(StringConstants.kLblDate)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblApril302022)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(97.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    HStack {
                        Text(StringConstants.kLblOrderTotal)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl997)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(21.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(220.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblYourOrder)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(18.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(21.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    Rowprice1Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), alignment: .center)
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(161.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(13.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblAddress)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                    HStack {
                        Image("img_vector_blue_a700_20x19")
                            .resizable()
                            .frame(width: getRelativeWidth(19.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(25.0))
                        Text(StringConstants.kMsg4517Washington)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray600)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(250.0), height: getRelativeHeight(40.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(280.0), height: getRelativeHeight(45.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(78.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(21.0))
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
                        .foregroundColor(ColorConstants.Bluegray900)
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
                        Text(StringConstants.kLblTransactionId)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl212040348792)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    HStack {
                        Text(StringConstants.kLblDateAndTime)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kMsgApril3020222)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.0))
                    HStack {
                        Text(StringConstants.kLblTotalMrp2)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(16.0),
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
                    .padding(.top, getRelativeHeight(16.0))
                    HStack {
                        Text(StringConstants.kLblTexesCharges)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(16.0),
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
                        Text(StringConstants.kLblDiscount)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl2002)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                    HStack {
                        Text(StringConstants.kLblOrderTotal2)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(97.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl997)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(18.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(19.0))
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(21.0))
                    HStack {
                        Text(StringConstants.kMsgDownloadInvoic)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(130.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                        Spacer()
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(10.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: getRelativeWidth(387.0), height: getRelativeHeight(16.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(20.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(247.0),
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

struct InvoiceBillingView_Previews: PreviewProvider {
    static var previews: some View {
        InvoiceBillingView()
    }
}
