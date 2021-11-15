import SwiftUI

struct AlamofireView: View {
    @StateObject var randomUserViewModel = RandomUserViewModel()
    
    var body: some View {
        List(randomUserViewModel.randomUsers) { aRandomUser in
            RandomUserRowView(aRandomUser)
        }
    }
}

struct AlamofireView_Previews: PreviewProvider {
    static var previews: some View {
        AlamofireView()
    }
}
