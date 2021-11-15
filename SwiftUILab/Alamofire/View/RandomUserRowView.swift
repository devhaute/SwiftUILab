import SwiftUI

struct RandomUserRowView: View {
    private let imageUrl = URL(string: "https://randomuser.me/api/portraits/men/36.jpg")!
    
    var body: some View {
        HStack {
            ProfileImageView(url: imageUrl)
            Text("하하하하하하하하하하하하")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(2)
                .minimumScaleFactor(0.5)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .leading)
        .background(Color.yellow)
        .padding(.vertical)
    }
}
