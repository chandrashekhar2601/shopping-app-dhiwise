import SwiftUI

struct WishlistView: View {
    @StateObject var wishlistViewModel = WishlistViewModel()
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
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(14.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(21.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(12.0))
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
                        Text(StringConstants.kLblWishlist)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(85.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(138.0))
                    }
                    .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(22.0))
                    ZStack(alignment: .center) {
                        Image("img_rectangle1377")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(805.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        VStack {
                            VStack {
                                VStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLblRoadster)
                                            .font(FontScheme
                                                .kGilroySemiBold(size: getRelativeHeight(18.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Bluegray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(75.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(29.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                        Text(StringConstants.kMsgWomenNavyBlue)
                                            .font(FontScheme
                                                .kGilroyMedium(size: getRelativeHeight(16.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(322.0),
                                                   height: getRelativeHeight(37.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(19.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                        HStack {
                                            Text(StringConstants.kLbl80)
                                                .font(FontScheme
                                                    .kGilroyRegular(size: getRelativeHeight(18.0)))
                                                .fontWeight(.regular)
                                                .foregroundColor(ColorConstants.Bluegray400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(32.0),
                                                       height: getRelativeHeight(18.0),
                                                       alignment: .topLeading)
                                            Text(StringConstants.kLbl70)
                                                .font(FontScheme
                                                    .kGilroySemiBold(size: getRelativeHeight(24.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.OrangeA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(40.0),
                                                       height: getRelativeHeight(24.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(16.0))
                                            Text(StringConstants.kLbl20Off)
                                                .font(FontScheme
                                                    .kGilroySemiBold(size: getRelativeHeight(20.0)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.BlueA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(67.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(16.0))
                                            Spacer()
                                        }
                                        .frame(width: getRelativeWidth(171.0),
                                               height: getRelativeHeight(24.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(31.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                        Text(StringConstants.kMsgInclusiveOfAl)
                                            .font(FontScheme
                                                .kGilroyRegular(size: getRelativeHeight(12.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(109.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(19.0))
                                            .padding(.horizontal, getRelativeWidth(16.0))
                                        HStack {
                                            VStack {
                                                Button(action: {}, label: {
                                                    HStack(spacing: 0) {
                                                        Text(StringConstants.kMsgAddedToWishli)
                                                            .font(FontScheme
                                                                .kGilroyMedium(size: getRelativeHeight(16.0)))
                                                            .fontWeight(.medium)
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(12.0))
                                                            .padding(.vertical,
                                                                     getRelativeHeight(17.0))
                                                            .foregroundColor(ColorConstants
                                                                .BlueA700)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.center)
                                                            .frame(width: getRelativeWidth(156.0),
                                                                   height: getRelativeHeight(50.0),
                                                                   alignment: .center)
                                                            .overlay(RoundedCorners(topLeft: 6.0,
                                                                                    topRight: 6.0,
                                                                                    bottomLeft: 6.0,
                                                                                    bottomRight: 6.0)
                                                                    .stroke(ColorConstants.BlueA700,
                                                                            lineWidth: 1))
                                                            .background(RoundedCorners(topLeft: 6.0,
                                                                                       topRight: 6.0,
                                                                                       bottomLeft: 6.0,
                                                                                       bottomRight: 6.0)
                                                                    .fill(Color.clear.opacity(0.7)))
                                                    }
                                                })
                                                .frame(width: getRelativeWidth(156.0),
                                                       height: getRelativeHeight(50.0),
                                                       alignment: .center)
                                                .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                        bottomLeft: 6.0,
                                                                        bottomRight: 6.0)
                                                        .stroke(ColorConstants.BlueA700,
                                                                lineWidth: 1))
                                                .background(RoundedCorners(topLeft: 6.0,
                                                                           topRight: 6.0,
                                                                           bottomLeft: 6.0,
                                                                           bottomRight: 6.0)
                                                        .fill(Color.clear.opacity(0.7)))
                                            }
                                            .frame(width: getRelativeWidth(156.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                       bottomLeft: 6.0,
                                                                       bottomRight: 6.0))
                                            Button(action: {}, label: {
                                                HStack(spacing: 0) {
                                                    Text(StringConstants.kLblAddToBag)
                                                        .font(FontScheme
                                                            .kGilroyMedium(size: getRelativeHeight(16.0)))
                                                        .fontWeight(.medium)
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(30.0))
                                                        .padding(.vertical, getRelativeHeight(17.0))
                                                        .foregroundColor(ColorConstants.WhiteA700)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(156.0),
                                                               height: getRelativeHeight(50.0),
                                                               alignment: .topLeading)
                                                        .background(RoundedCorners(topLeft: 6.0,
                                                                                   topRight: 6.0,
                                                                                   bottomLeft: 6.0,
                                                                                   bottomRight: 6.0)
                                                                .fill(ColorConstants.BlueA700))
                                                        .padding(.leading, getRelativeWidth(24.0))
                                                }
                                            })
                                            .frame(width: getRelativeWidth(156.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .topLeading)
                                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                       bottomLeft: 6.0,
                                                                       bottomRight: 6.0)
                                                    .fill(ColorConstants.BlueA700))
                                            .padding(.leading, getRelativeWidth(24.0))
                                        }
                                        .frame(width: getRelativeWidth(336.0),
                                               height: getRelativeHeight(50.0), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(28.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    }
                                    .frame(width: getRelativeWidth(396.0),
                                           height: getRelativeHeight(294.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                               bottomLeft: 6.0, bottomRight: 6.0)
                                            .fill(ColorConstants.Gray50))
                                    .shadow(radius: 31)
                                }
                                .frame(width: getRelativeWidth(396.0),
                                       height: getRelativeHeight(294.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0))
                            }
                            .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(294.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                        }
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(294.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(443.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(805.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(37.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(866.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(26.0))
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

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
