import SwiftUI

struct RowrestoreCell: View {
    var body: some View {
        HStack {
            HStack {
                Image("img_unsplashenrurz")
                    .resizable()
                    .frame(width: getRelativeWidth(68.0), height: getRelativeWidth(70.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                               bottomRight: 6.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblLoremIpsum)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                        .padding(.trailing)
                    Text(StringConstants.kMsgLoremIpsumDol5)
                        .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(12.0))
                    Text(StringConstants.kLbl2400)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(69.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(200.0), height: getRelativeHeight(71.0),
                   alignment: .leading)
            Text(StringConstants.kLblRestore)
                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.BlueA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(16.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(126.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowrestoreCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowrestoreCell()
 }
 } */
