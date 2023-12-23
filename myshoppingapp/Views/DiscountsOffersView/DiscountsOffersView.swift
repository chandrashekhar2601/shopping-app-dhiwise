import SwiftUI

struct DiscountsOffersView: View {
    @StateObject var discountsOffersViewModel = DiscountsOffersViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
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
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            HStack {
                                Image("img_arrowleft")
                                    .resizable()
                                    .frame(width: getRelativeWidth(12.0),
                                           height: getRelativeWidth(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.bottom, getRelativeHeight(5.0))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                Text(StringConstants.kLblOffersForYou)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(154.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(103.0))
                            }
                            .frame(width: getRelativeWidth(269.0), height: getRelativeHeight(24.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(6.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            StackvectorsixtyoneCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(396.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(37.0))
                        }
                        .frame(width: getRelativeWidth(396.0), alignment: .topLeading)
                    }
                }
                .frame(width: getRelativeWidth(397.0), alignment: .topLeading)
                .background(ColorConstants.Gray50)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: GuestLoginView(),
                                   tag: "GuestLoginView",
                                   selection: $discountsOffersViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray50)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            discountsOffersViewModel.nextScreen = "GuestLoginView"
        }
    }
}

struct DiscountsOffersView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountsOffersView()
    }
}
