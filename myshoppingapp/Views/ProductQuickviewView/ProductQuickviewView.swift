import SwiftUI

struct ProductQuickviewView: View {
    @StateObject var productQuickviewViewModel = ProductQuickviewViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
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
                                .frame(width: getRelativeWidth(392.0),
                                       height: getRelativeHeight(21.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(392.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(30.0))
                            .padding(.leading, getRelativeWidth(21.0))
                            .padding(.trailing, getRelativeWidth(14.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(229.0),
                               alignment: .topLeading)
                        .background(RoundedCorners(bottomLeft: 6.0, bottomRight: 6.0)
                            .fill(ColorConstants.Blue50))
                        .padding(.bottom, getRelativeHeight(92.0))
                        VStack {
                            Image("img_image")
                                .resizable()
                                .frame(width: getRelativeWidth(240.0),
                                       height: getRelativeHeight(219.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Image("img_swipe")
                                .resizable()
                                .frame(width: getRelativeWidth(33.0),
                                       height: getRelativeHeight(5.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.horizontal, getRelativeWidth(104.0))
                        }
                        .frame(width: getRelativeWidth(240.0), height: getRelativeHeight(248.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(73.0))
                        .padding(.horizontal, getRelativeWidth(94.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(321.0),
                           alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(321.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        Text(StringConstants.kLblGreenApple)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(28.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(28.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(8.0))
                        Spacer()
                        HStack {
                            Image("img_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeWidth(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLbl1)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(24.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.BlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(9.0),
                                       height: getRelativeHeight(24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(15.0))
                            Image("img_icon_blue_a700")
                                .resizable()
                                .frame(width: getRelativeWidth(30.0),
                                       height: getRelativeWidth(30.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(30.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(5.0))
                        .padding(.bottom, getRelativeHeight(4.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(39.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(39.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(27.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblSpecialPrice)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(20.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(15.0))
                VStack {
                    HStack {
                        Text(StringConstants.kLbl2)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(32.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(32.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLbl42Off)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(20.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(77.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(32.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(32.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(23.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblDescription)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(16.0))
                    Text(StringConstants.kMsgGreenApplesHa)
                        .font(FontScheme.kGilroyRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(371.0), height: getRelativeHeight(93.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(131.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(43.0))
                VStack {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblAddToCart)
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
                                .padding(.horizontal, getRelativeWidth(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.BlueA700))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(50.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(28.0))
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

struct ProductQuickviewView_Previews: PreviewProvider {
    static var previews: some View {
        ProductQuickviewView()
    }
}
