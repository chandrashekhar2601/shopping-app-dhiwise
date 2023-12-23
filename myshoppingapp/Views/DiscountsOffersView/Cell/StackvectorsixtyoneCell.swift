import SwiftUI

struct StackvectorsixtyoneCell: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("img_vector61")
                .resizable()
                .frame(width: getRelativeWidth(2.0), height: getRelativeHeight(3.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.bottom, getRelativeHeight(241.95))
                .padding(.trailing, getRelativeWidth(392.0))
            Image("img_vector61")
                .resizable()
                .frame(width: getRelativeWidth(2.0), height: getRelativeHeight(3.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.bottom, getRelativeHeight(203.65))
                .padding(.trailing, getRelativeWidth(392.0))
            Divider()
                .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(1.0),
                       alignment: .leading)
                .background(ColorConstants.Gray200)
                .padding(.top, getRelativeHeight(256.0))
                .padding(.horizontal, getRelativeWidth(18.0))
            VStack {
                ZStack(alignment: .center) {
                    ZStack {
                        Image("img_friedricechic")
                            .resizable()
                            .frame(width: getRelativeWidth(391.0), height: getRelativeHeight(159.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .cornerRadius(6.0)
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(391.0), height: getRelativeHeight(159.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0)
                        .fill(ColorConstants.Gray300))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack(alignment: .leading) {
                                Image("img_rectangle3")
                                    .resizable()
                                    .frame(width: getRelativeWidth(106.0),
                                           height: getRelativeHeight(30.0), alignment: .leading)
                                    .scaledToFit()
                                Text(StringConstants.kLblRescued)
                                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(51.0),
                                           height: getRelativeHeight(12.0), alignment: .leading)
                                    .padding(.leading, getRelativeWidth(24.0))
                                    .padding(.trailing, getRelativeWidth(31.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(30.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(5.0))
                            Spacer()
                            VStack {
                                HStack {
                                    Spacer()
                                    Image("img_timecircle")
                                        .resizable()
                                        .frame(width: getRelativeWidth(10.0),
                                               height: getRelativeWidth(12.0), alignment: .leading)
                                        .scaledToFit()
                                        .padding(.vertical, getRelativeHeight(6.0))
                                    Spacer()
                                    Text(StringConstants.kLbl30Min)
                                        .font(FontScheme
                                            .kGilroySemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(35.0),
                                               height: getRelativeHeight(12.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.bottom, getRelativeHeight(6.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(63.0),
                                       height: getRelativeHeight(24.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.WhiteA700))
                            }
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(24.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                            .padding(.bottom, getRelativeHeight(11.0))
                        }
                        .frame(width: getRelativeWidth(381.0), height: getRelativeHeight(35.0),
                               alignment: .leading)
                        ZStack(alignment: .center) {
                            Image("img_rectangle3")
                                .resizable()
                                .frame(width: getRelativeWidth(79.0),
                                       height: getRelativeHeight(25.0), alignment: .leading)
                                .scaledToFit()
                            Text(StringConstants.kLbl50Off)
                                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(38.0),
                                       height: getRelativeHeight(12.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(6.7))
                                .padding(.bottom, getRelativeHeight(6.3))
                                .padding(.horizontal, getRelativeWidth(21.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(381.0), height: getRelativeHeight(73.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(64.0))
                    .padding(.trailing, getRelativeWidth(13.0))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(394.0), height: getRelativeHeight(159.0),
                       alignment: .leading)
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgSuhaniRestaura)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(18.0),
                                   alignment: .leading)
                            .padding(.trailing)
                        Text(StringConstants.kMsgChinneseNorth)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(141.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            Text(StringConstants.kLbl200)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(12.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(4.0))
                            Spacer()
                            Text(StringConstants.kLbl100)
                                .font(FontScheme.kGilroyBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.OrangeA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(41.0),
                                       height: getRelativeHeight(20.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(13.0))
                        }
                        .frame(width: getRelativeWidth(77.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(84.0),
                           alignment: .leading)
                    Spacer()
                    VStack(alignment: .trailing, spacing: 0) {
                        HStack {
                            Spacer()
                            Text(StringConstants.kLbl45)
                                .font(FontScheme.kGilroyBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeHeight(12.0), alignment: .leading)
                                .padding(.vertical, getRelativeHeight(7.0))
                            Spacer()
                            Image("img_star17")
                                .resizable()
                                .frame(width: getRelativeWidth(11.0),
                                       height: getRelativeWidth(13.0), alignment: .leading)
                                .scaledToFit()
                                .background(RoundedCorners(topLeft: 0.5, topRight: 0.5,
                                                           bottomLeft: 0.5, bottomRight: 0.5)
                                        .fill(ColorConstants.WhiteA700))
                                .padding(.vertical, getRelativeHeight(7.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(27.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 13.5, topRight: 13.5, bottomLeft: 13.5,
                                                   bottomRight: 13.5)
                                .fill(ColorConstants.Green600))
                        .padding(.leading)
                        .padding(.leading)
                        HStack {
                            Image("img_009fire2")
                                .resizable()
                                .frame(width: getRelativeWidth(9.0),
                                       height: getRelativeHeight(14.0), alignment: .leading)
                                .scaledToFit()
                            Text(StringConstants.kLbl145Cal)
                                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(42.0),
                                       height: getRelativeHeight(14.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(9.0))
                        }
                        .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(25.0))
                    }
                    .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(71.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(13.0))
                }
                .frame(width: getRelativeWidth(356.0), height: getRelativeHeight(84.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.horizontal, getRelativeWidth(19.0))
                Text(StringConstants.kMsgLeftOverFood)
                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray501)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(19.0))
            }
            .frame(width: getRelativeWidth(394.0), height: getRelativeHeight(283.0),
                   alignment: .leading)
            .padding(.bottom, getRelativeHeight(19.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0, bottomRight: 6.0)
            .fill(ColorConstants.WhiteA700))
        .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
    }
}

/* struct StackvectorsixtyoneCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackvectorsixtyoneCell()
 }
 } */
