import SwiftUI

struct DiceView: View {
    @EnvironmentObject var store: AppStore
    
    @State private var shouldRoll = false
    @State private var pressed = false
    
    var diceRollAnim: Animation {
        Animation.spring()
    }
    
    func rollTheDice() {
        self.shouldRoll.toggle()
        store.dispatch(.rollTheDice)
    }
    
    var body: some View {
        VStack {
            Text(store.state.currentDice)
                .font(.system(size: 300, weight: .bold, design: .monospaced))
                .foregroundColor(.black)
                .padding()
                .rotationEffect(.degrees(shouldRoll ? 360 : 0))
                .animation(diceRollAnim, value: self.shouldRoll)
            
            Button {
                self.rollTheDice()
            } label: {
                Text("랜덤 주사위 돌리기")
                    .fontWeight(.black)
            }
            .buttonStyle(MyButtonStyle())
            .scaleEffect(self.pressed ? 1.2 : 1.0)
            .onLongPressGesture(minimumDuration: .infinity, maximumDistance: .infinity) {
                
            } onPressingChanged: { pressing in
                self.pressed = pressing
            }


        }
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
