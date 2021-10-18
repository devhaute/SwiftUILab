import SwiftUI

struct AlamofireView: View {
    var body: some View {
        List(0...50, id: \.self) { index in
            ProfileView(url: "https://randomuser.me/api/portraits/men/21.jpg")
        }
        .edgesIgnoringSafeArea(.all)
        .listStyle(.plain)
    }
}

struct AlamofireView_Previews: PreviewProvider {
    static var previews: some View {
        AlamofireView()
    }
}
