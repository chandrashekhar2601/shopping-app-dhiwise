import SwiftUI

struct CustomisedOrderStatusView: View {
    @StateObject var customisedOrderStatusViewModel = CustomisedOrderStatusViewModel()
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
                .padding(.top, getRelativeHeight(30.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                HStack {
                    Image("img_arrowleft")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(12.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(6.0))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Spacer()
                    Text(StringConstants.kMsgCustomisedOrde)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(278.0), height: getRelativeHeight(24.0),
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
                .padding(.horizontal, getRelativeWidth(16.0))
                ZStack(alignment: .bottomLeading) {
                    HStack {
                        Text(StringConstants.kLblCompleted)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(157.0))
                        Text(StringConstants.kLblCanceled)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(58.0))
                            .padding(.trailing, getRelativeWidth(26.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .overlay(RoundedCorners().stroke(ColorConstants.Bluegray100, lineWidth: 1))
                    .background(RoundedCorners().fill(ColorConstants.Gray50))
                    VStack {
                        Text(StringConstants.kLblPending)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.BlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(16.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(2.0),
                                   alignment: .leading)
                            .background(ColorConstants.BlueA700)
                            .padding(.top, getRelativeHeight(17.0))
                    }
                    .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(35.0),
                           alignment: .bottomLeading)
                    .padding(.top, getRelativeHeight(16.04))
                    .padding(.trailing, getRelativeWidth(300.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(37.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 1, id: \.self) { index in
                                ColumnunsplashenrurzCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(396.0), alignment: .center)
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

struct CustomisedOrderStatusView_Previews: PreviewProvider {
    static var previews: some View {
        CustomisedOrderStatusView()
    }
}
