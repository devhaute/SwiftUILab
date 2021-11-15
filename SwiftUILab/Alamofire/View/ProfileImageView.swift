import SwiftUI
import URLImage

struct ProfileImageView: View {
    var url: URL
    
    var body: some View {
        URLImage(url) { image in
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
