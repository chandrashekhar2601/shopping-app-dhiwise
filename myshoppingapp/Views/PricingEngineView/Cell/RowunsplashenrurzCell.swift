import SwiftUI

struct RowunsplashenrurzCell: View {
    var body: some View {
        HStack {
            Image("img_unsplashenrurz")
                .resizable()
                .frame(width: getRelativeWidth(84.0), height: getRelativeWidth(86.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                           bottomRight: 3.0))
                .padding(.leading, getRelativeWidth(12.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgLogoPrintedT)
                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kLblPrada)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                HStack {
                    HStack {
                        Text(StringConstants.kLblSizeM)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(12.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(4.0))
                        Image("img_vector_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(4.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.leading, getRelativeWidth(4.0))
                            .padding(.trailing, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                               bottomRight: 3.0)
                            .fill(ColorConstants.Gray51))
                    Spacer()
                    HStack {
                        Text(StringConstants.kLblColor)
                            .font(FontScheme.kGilroyMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(12.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(4.0))
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Bluegray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.DeepPurple50))
                            .padding(.leading, getRelativeWidth(4.0))
                        Image("img_vector_bluegray_400")
                            .resizable()
                            .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(4.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.horizontal, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 3.0, topRight: 3.0, bottomLeft: 3.0,
                                               bottomRight: 3.0)
                            .fill(ColorConstants.Gray51))
                    Spacer()
                    Text(StringConstants.kLblQty04)
                        .font(FontScheme.kGilroyMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .padding(.horizontal, getRelativeWidth(4.0))
                        .padding(.bottom, getRelativeHeight(6.0))
                        .padding(.top, getRelativeHeight(5.0))
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .background(ColorConstants.Gray51)
                }
                .frame(width: getRelativeWidth(202.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
            }
            .frame(width: getRelativeWidth(202.0), height: getRelativeHeight(72.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(12.0))
            VStack(alignment: .trailing, spacing: 0) {
                Text(StringConstants.kLbl1050)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(10.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(28.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.leading)
                    .padding(.leading)
                Text(StringConstants.kLbl550)
                    .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.BlueA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(18.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(39.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(24.0))
            .padding(.trailing, getRelativeWidth(12.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0, bottomRight: 6.0)
            .fill(ColorConstants.WhiteA700))
        .shadow(color: ColorConstants.Gray70011, radius: 10, x: 0, y: 0)
        .hideNavigationBar()
    }
}

/* struct RowunsplashenrurzCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowunsplashenrurzCell()
 }
 } */
