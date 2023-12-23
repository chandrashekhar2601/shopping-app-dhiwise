import SwiftUI

struct ChatbotView: View {
    @StateObject var chatbotViewModel = ChatbotViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    HStack {
                        HStack {
                            Image("img_leftside_bluegray_900")
                                .resizable()
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeHeight(21.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .clipShape(Capsule())
                            Spacer()
                            Image("img_rightside_bluegray_900")
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
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Spacer()
                        Text(StringConstants.kLblName)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Spacer()
                        Image("img_vector_bluegray_900")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: getRelativeWidth(388.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(26.0))
                    .padding(.leading, getRelativeWidth(6.0))
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(18.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(91.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .leading, spacing: 0) {
                    ZStack(alignment: .center) {
                        Image("img_union")
                            .resizable()
                            .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(68.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kMsgHiIMDanial)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(35.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.78))
                            .padding(.bottom, getRelativeHeight(15.22))
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(68.0),
                           alignment: .leading)
                    .padding(.trailing)
                    Text(StringConstants.kLbl302Pm)
                        .font(FontScheme.kGilroyRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Black90066)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(12.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.horizontal, getRelativeWidth(9.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(87.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(23.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack(alignment: .trailing, spacing: 0) {
                    ZStack(alignment: .bottomLeading) {
                        Image("img_union_blue_54")
                            .resizable()
                            .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(68.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kMsgLoremIpsumDol6)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(175.0), height: getRelativeHeight(35.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.78))
                            .padding(.trailing, getRelativeWidth(62.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(268.0), height: getRelativeHeight(68.0),
                           alignment: .trailing)
                    .padding(.leading)
                    .padding(.leading)
                    HStack {
                        Text(StringConstants.kLbl302Pm)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black90066)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                        Image("img_union_green_600")
                            .resizable()
                            .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(8.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(12.0),
                           alignment: .trailing)
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.leading, getRelativeWidth(333.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(87.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(20.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                VStack {
                    ZStack {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        Rowgroup1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(376.0), alignment: .leading)
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(376.0), height: getRelativeHeight(100.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0,
                                               bottomRight: 24.0))
                    .padding(.leading, getRelativeWidth(9.0))
                    .padding(.trailing, getRelativeWidth(12.0))
                    Divider()
                        .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .background(ColorConstants.Bluegray100)
                        .padding(.top, getRelativeHeight(16.0))
                    HStack {
                        HStack {
                            Spacer()
                            Image("img_vector_16x16")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeWidth(16.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(15.0))
                                .padding(.horizontal, getRelativeWidth(17.0))
                            TextField(StringConstants.kMsgYourMessage,
                                      text: $chatbotViewModel.group9684Text)
                                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Bluegray400)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(344.0), height: getRelativeHeight(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                bottomRight: 6.0)
                                .stroke(ColorConstants.Bluegray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0)
                                .fill(ColorConstants.WhiteA700))
                        Button(action: {}, label: {
                            Image("img_vector_blue_a700_16x16")
                        })
                        .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(48.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                bottomRight: 6.0)
                                .stroke(ColorConstants.Bluegray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.leading, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(396.0), height: getRelativeHeight(48.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(15.0))
                }
                .frame(width: getRelativeWidth(397.0), height: getRelativeHeight(180.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(350.0))
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

struct ChatbotView_Previews: PreviewProvider {
    static var previews: some View {
        ChatbotView()
    }
}
