import SwiftUI

struct RandomUserRowView: View {
    let randomUser: RandomUser
    
    init(_ randomUser: RandomUser){
        self.randomUser = randomUser
    }
    
    var body: some View {
        HStack {
            ProfileImageView(url: randomUser.photo.medium)
            Text(randomUser.name.description)
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
