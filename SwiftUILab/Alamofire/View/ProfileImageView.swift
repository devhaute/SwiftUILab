import SwiftUI
import URLImage

struct ProfileImageView: View {
    var imageURL: URL
    
    init(url urlString: String){
        self.imageURL = URL(string: urlString) ?? URL(string: "https://randomuser.me/api/portraits/med/men/1.jpg")!
    }
    
    var body: some View {
        URLImage(imageURL) { image in
            image
                .resizable()
                .scaledToFit()
        }
        .frame(width: 50, height: 60)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.yellow, lineWidth: 2)
        )
    }
}
