import SwiftUI

struct RowyouhaveperforthreeCell: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgYouHavePerfor)
                    .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(222.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kMsgLoremIpsumDol)
                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(14.0))
            }
            .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(44.0),
                   alignment: .leading)
            Text(StringConstants.kLbl1200Am)
                .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Bluegray400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(14.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(83.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowyouhaveperforthreeCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowyouhaveperforthreeCell()
 }
 } */
