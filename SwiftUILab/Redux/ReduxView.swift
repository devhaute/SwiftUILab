import SwiftUI

struct ReduxView: View {
    let store: AppStore = AppStore(initState: .init(currentDice: "⚀"), reducer: appReducer)
    
    var body: some View {
        DiceView()
            .environmentObject(store)
    }
}

struct ReduxView_Previews: PreviewProvider {
    static var previews: some View {
        ReduxView()
            .environmentObject(AppStore(initState: .init(currentDice: "⚀"), reducer: appReducer))
    }
}
