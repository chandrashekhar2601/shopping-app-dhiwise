import SwiftUI

struct Rowprice1Cell: View {
    var body: some View {
        HStack {
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
                    Text(StringConstants.kLblShimlaApple)
                        .font(FontScheme.kGilroySemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Bluegray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                    Text(StringConstants.kLbl1Kg)
                        .font(FontScheme.kGilroyRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Bluegray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(14.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(45.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(174.0), height: getRelativeHeight(64.0),
                   alignment: .leading)
            Text(StringConstants.kLbl447)
                .font(FontScheme.kGilroyBold(size: getRelativeHeight(16.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.Bluegray900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(16.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(179.0))
        }
        .frame(width: getRelativeWidth(394.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Rowprice1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowprice1Cell()
 }
 } */
