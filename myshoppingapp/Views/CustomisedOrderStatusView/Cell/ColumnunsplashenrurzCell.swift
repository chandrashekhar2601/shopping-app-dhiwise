import SwiftUI

struct ColumnunsplashenrurzCell: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Image("img_unsplashenrurz")
                        .resizable()
                        .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                                   bottomRight: 3.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgLogoPrintedT)
                            .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(16.0),
                                   alignment: .leading)
                        Text(StringConstants.kLblQty01)
                            .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(42.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(203.0), height: getRelativeHeight(50.0),
                       alignment: .leading)
                Spacer()
                Text(StringConstants.kLblPending)
                    .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Amber500)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(59.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.bottom, getRelativeHeight(17.0))
            }
            .frame(width: getRelativeWidth(349.0), height: getRelativeHeight(52.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(16.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            Divider()
                .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(1.0),
                       alignment: .leading)
                .background(ColorConstants.Bluegray100)
                .padding(.top, getRelativeHeight(16.0))
                .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kLblOrderId)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLbl21204034879)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(16.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(20.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kLblOrderBy)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLblAngelynWeiner)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(16.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(19.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kLblDate)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLblApril302022)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(17.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(16.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kLblTotalPaid)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLbl997)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(16.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(16.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            HStack {
                Text(StringConstants.kMsgDeliveryAddres)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(118.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(48.0))
                Spacer()
                Text(StringConstants.kMsg4517Washington)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.trailing)
                    .frame(width: getRelativeWidth(156.0), height: getRelativeHeight(63.0),
                           alignment: .trailing)
            }
            .frame(width: getRelativeWidth(362.0), height: getRelativeHeight(64.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(19.0))
            .padding(.horizontal, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0, bottomRight: 6.0)
            .fill(ColorConstants.WhiteA700))
        .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
        .hideNavigationBar()
    }
}

/* struct ColumnunsplashenrurzCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnunsplashenrurzCell()
 }
 } */
