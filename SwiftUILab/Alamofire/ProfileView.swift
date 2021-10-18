import SwiftUI
import URLImage

struct ProfileView: View {
    let url: String

    private var convertURL: URL {
        URL(string: url)!
    }
    
    var body: some View {
        HStack(spacing: 0) {
            URLImage(convertURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.yellow, lineWidth: 2)
                    )
                    .padding(.trailing, 20)
            }
            Text("[Mr] Connor Fletcher")
                .font(.system(size: 20, weight: .heavy))
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(url: "https://randomuser.me/api/portraits/men/36.jpg")
    }
}
