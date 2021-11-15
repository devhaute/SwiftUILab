import SwiftUI

struct AlamofireView: View {
    var body: some View {
        List(0..<50) { _ in
            RandomUserRowView()
        }
    }
}

struct AlamofireView_Previews: PreviewProvider {
    static var previews: some View {
        AlamofireView()
    }
}
