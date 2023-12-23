import SwiftUI

struct OrderdetailviewView: View {
    @StateObject var orderdetailviewViewModel = OrderdetailviewViewModel()
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
                        Text(StringConstants.kLblMyOrders)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(124.0))
                    }
                    .frame(width: getRelativeWidth(249.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(52.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    HStack {
                        HStack {
                            Image("img_unsplashenrurz")
                                .resizable()
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeWidth(66.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                           bottomLeft: 3.0, bottomRight: 3.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgLogoPrintedT)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(163.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kMsgArrivingWednes)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.BlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(129.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(17.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(49.0),
                                   alignment: .bottom)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(66.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(12.0))
                        Spacer()
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(13.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(38.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(90.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
                    HStack {
                        HStack {
                            Image("img_unsplashenrurz_66x66")
                                .resizable()
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeWidth(66.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                           bottomLeft: 3.0, bottomRight: 3.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgLogoPrintedT)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(163.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kMsgDelivered02M)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(149.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(48.0),
                                   alignment: .bottom)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(66.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(12.0))
                        Spacer()
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(13.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(38.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(90.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
                    .padding(.top, getRelativeHeight(16.0))
                    HStack {
                        HStack {
                            Image("img_unsplashenrurz_1")
                                .resizable()
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeWidth(66.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                           bottomLeft: 3.0, bottomRight: 3.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgLogoPrintedT)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(163.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kLblCancelled)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Red700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(15.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(47.0),
                                   alignment: .bottom)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(66.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(12.0))
                        Spacer()
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(13.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(38.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(90.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
                    .padding(.top, getRelativeHeight(16.0))
                    HStack {
                        HStack {
                            Image("img_unsplashenrurz_2")
                                .resizable()
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeWidth(66.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                           bottomLeft: 3.0, bottomRight: 3.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgLogoPrintedT)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(163.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kMsgDelivered02M)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(149.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(48.0),
                                   alignment: .bottom)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(66.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(12.0))
                        Spacer()
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(13.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(38.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(90.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
                    .padding(.top, getRelativeHeight(16.0))
                    HStack {
                        HStack {
                            Image("img_unsplashenrurz_66x66")
                                .resizable()
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeWidth(66.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 3.0, topRight: 3.0,
                                                           bottomLeft: 3.0, bottomRight: 3.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgLogoPrintedT)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(163.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kMsgDelivered02M)
                                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Green600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(149.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(16.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(163.0), height: getRelativeHeight(48.0),
                                   alignment: .bottom)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(245.0), height: getRelativeHeight(66.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(12.0))
                        Spacer()
                        Image("img_arrowright")
                            .resizable()
                            .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(13.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(38.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(90.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.WhiteA700))
                    .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
                    .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(514.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(24.0))
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

struct OrderdetailviewView_Previews: PreviewProvider {
    static var previews: some View {
        OrderdetailviewView()
    }
}
