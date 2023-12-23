import SwiftUI

struct ExpenseTrackingView: View {
    @StateObject var expenseTrackingViewModel = ExpenseTrackingViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    HStack {
                        Image("img_leftside")
                            .resizable()
                            .frame(width: getRelativeWidth(54.0), height: getRelativeHeight(21.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .clipShape(Capsule())
                        Spacer()
                        Image("img_rightside")
                            .resizable()
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(11.0),
                                   alignment: .center)
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
                VStack(alignment: .trailing, spacing: 0) {
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
                        Text(StringConstants.kMsgExpenseTrackin)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(24.0),
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
                    .padding(.leading)
                    .padding(.leading)
                    ZStack(alignment: .bottomLeading) {
                        VStack {
                            Text(StringConstants.kLblLastMonth)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(82.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.bottom, getRelativeHeight(17.0))
                                .padding(.horizontal, getRelativeWidth(53.0))
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(49.0),
                               alignment: .leading)
                        .overlay(RoundedCorners().stroke(ColorConstants.Bluegray100, lineWidth: 1))
                        .background(RoundedCorners().fill(ColorConstants.Gray50))
                        VStack {
                            Text(StringConstants.kLblThisMonth)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(10.0))
                            Divider()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeHeight(2.0), alignment: .leading)
                                .background(ColorConstants.BlueA700)
                                .padding(.top, getRelativeHeight(19.0))
                        }
                        .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(37.0),
                               alignment: .bottomLeading)
                        .padding(.top, getRelativeHeight(14.46))
                        .padding(.trailing, getRelativeWidth(247.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(35.0))
                    HStack {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblTotalExpense)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(106.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.trailing)
                            Text(StringConstants.kLbl214500)
                                .font(FontScheme.kGilroyBold(size: getRelativeHeight(36.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(147.0),
                                       height: getRelativeHeight(36.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                            Text(StringConstants.kMsg30FromTransf)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(128.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Text(StringConstants.kLbl70FromSalary)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(115.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(15.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                        }
                        .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(138.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(22.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        Spacer()
                        CircularProgress(percentage: 0.5, fontSize: 0.0,
                                         backgroundColor: Color.clear,
                                         fontColor: Color.clear,
                                         borderColor1: ColorConstants.WhiteA70067,
                                         borderColor2: LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                 .WhiteA700]),
                                         startPoint: .leading,
                                         endPoint: .trailing),
                                         borderWidth: 7)
                            .frame(width: getRelativeWidth(131.0), height: getRelativeWidth(131.0),
                                   alignment: .center)
                            .background(ColorConstants.WhiteA70067)
                            .padding(.vertical, getRelativeHeight(23.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(178.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.top, getRelativeHeight(23.0))
                    Text(StringConstants.kMsgRecentTransact)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(29.0))
                        .padding(.trailing, getRelativeWidth(236.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 6, id: \.self) { index in
                                    RowpriceCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(23.0))
                }
                .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(873.0),
                       alignment: .center)
                .background(ColorConstants.Gray50)
                .padding(.top, getRelativeHeight(26.0))
            }
            .frame(width: getRelativeWidth(397.0), alignment: .topLeading)
            .background(ColorConstants.Gray50)
            .padding(.top, getRelativeHeight(12.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray50)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ExpenseTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseTrackingView()
    }
}
