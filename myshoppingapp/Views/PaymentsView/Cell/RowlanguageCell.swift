import SwiftUI

struct RowlanguageCell: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgSentToAngelyn)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(169.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                Text(StringConstants.kMsg29Jan0632P)
                    .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Bluegray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(13.0))
                    .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(169.0), height: getRelativeHeight(43.0),
                   alignment: .leading)
            HStack {
                Text(StringConstants.kLbl20)
                    .font(FontScheme.kGilroyMedium(size: getRelativeHeight(16.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(16.0),
                           alignment: .leading)
                Image("img_arrow1")
                    .resizable()
                    .frame(width: getRelativeWidth(9.0), height: getRelativeWidth(11.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(6.0))
            }
            .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(16.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(177.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowlanguageCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowlanguageCell()
 }
 } */
