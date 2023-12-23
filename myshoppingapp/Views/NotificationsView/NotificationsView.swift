import SwiftUI

struct NotificationsView: View {
    @StateObject var notificationsViewModel = NotificationsViewModel()
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
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kLblInbox)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(61.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(150.0))
                    }
                    .frame(width: getRelativeWidth(223.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(6.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                    Text(StringConstants.kLblMay92021)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(93.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(44.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(86.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(26.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    RowyouhaveperforCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), alignment: .center)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(188.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(11.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblMay82021)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(18.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(39.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    RowyouhaveperforthreeCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(396.0), alignment: .center)
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(188.0),
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

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
