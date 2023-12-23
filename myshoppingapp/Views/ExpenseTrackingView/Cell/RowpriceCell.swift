import SwiftUI

struct RowpriceCell: View {
    var body: some View {
        HStack {
            HStack {
                Button(action: {}, label: {
                    Image("img_group9894")
                })
                .frame(width: getRelativeWidth(54.0), height: getRelativeWidth(56.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(ColorConstants.Blue50))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblSalary)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                        .padding(.trailing)
                    Text(StringConstants.kLblMay162022)
                        .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                }
                .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(45.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(56.0),
                   alignment: .leading)
            Text(StringConstants.kLbl2000)
                .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(18.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Green600)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(178.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowpriceCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowpriceCell()
 }
 } */
