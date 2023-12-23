import SwiftUI

struct PaymentsView: View {
    @StateObject var paymentsViewModel = PaymentsViewModel()
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
                            .padding(.bottom, getRelativeHeight(9.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Spacer()
                        Text(StringConstants.kLblPayments)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(24.0),
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
                    VStack {
                        Text(StringConstants.kMsgAvailableBalan)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(125.0))
                        Text(StringConstants.kLbl214500)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(36.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(146.0), height: getRelativeHeight(36.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(125.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(120.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
                    .padding(.top, getRelativeHeight(34.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(229.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgRecentTransact2)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(169.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(18.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(29.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 7, id: \.self) { index in
                                    RowlanguageCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), alignment: .center)
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(600.0),
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

struct PaymentsView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentsView()
    }
}
