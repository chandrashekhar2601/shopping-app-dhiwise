import SwiftUI

struct Rowgroup1Cell: View {
    var body: some View {
        HStack {
            Text(StringConstants.kLblLoremIpsum1)
                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                .fontWeight(.medium)
                .padding(.horizontal, getRelativeWidth(24.0))
                .padding(.bottom, getRelativeHeight(14.0))
                .padding(.top, getRelativeHeight(17.0))
                .foregroundColor(ColorConstants.BlueA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(46.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                        bottomRight: 23.0)
                        .stroke(ColorConstants.BlueA700,
                                lineWidth: 1))
                .background(ColorConstants.WhiteA700)
            Text(StringConstants.kLblQue2)
                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                .fontWeight(.medium)
                .padding(.horizontal, getRelativeWidth(24.0))
                .padding(.bottom, getRelativeHeight(15.0))
                .padding(.top, getRelativeHeight(16.0))
                .foregroundColor(ColorConstants.BlueA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(46.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                        bottomRight: 23.0)
                        .stroke(ColorConstants.BlueA700,
                                lineWidth: 1))
                .background(ColorConstants.WhiteA700)
                .padding(.leading, getRelativeWidth(8.0))
            Text(StringConstants.kLblQuestion3)
                .font(FontScheme.kGilroyMedium(size: getRelativeHeight(14.0)))
                .fontWeight(.medium)
                .padding(.horizontal, getRelativeWidth(24.0))
                .padding(.bottom, getRelativeHeight(15.0))
                .padding(.top, getRelativeHeight(16.0))
                .foregroundColor(ColorConstants.BlueA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(46.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 23.0, topRight: 23.0, bottomLeft: 23.0,
                                        bottomRight: 23.0)
                        .stroke(ColorConstants.BlueA700,
                                lineWidth: 1))
                .background(ColorConstants.WhiteA700)
                .padding(.leading, getRelativeWidth(8.0))
        }
        .frame(width: getRelativeWidth(374.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Rowgroup1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowgroup1Cell()
 }
 } */
