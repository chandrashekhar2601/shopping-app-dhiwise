import SwiftUI

struct RowgroupCell: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image("img_group9778")
            })
            .frame(width: getRelativeWidth(62.0), height: getRelativeWidth(64.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                       bottomRight: 6.0)
                    .fill(ColorConstants.WhiteA700))
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(StringConstants.kLblShimlaApple)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.bottom, getRelativeHeight(7.0))
                    Spacer()
                    HStack {
                        Image("img_vector")
                            .resizable()
                            .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.leading, getRelativeWidth(10.0))
                        Text(StringConstants.kLbl1)
                            .font(FontScheme.kGilroyBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(18.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(18.0))
                        Image("img_vector_blue_a700")
                            .resizable()
                            .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                                   alignment: .leading)
                            .scaledToFit()
                            .padding(.leading, getRelativeWidth(18.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(86.0), height: getRelativeHeight(32.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                            bottomRight: 6.0)
                            .stroke(ColorConstants.BlueA700,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0)
                            .fill(ColorConstants.Blue50))
                }
                .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(32.0),
                       alignment: .leading)
                HStack {
                    Text(StringConstants.kLbl1Kg)
                        .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                    Spacer()
                    Text(StringConstants.kLbl447)
                        .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(8.0))
            }
            .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(62.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowgroupCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowgroupCell()
 }
 } */
