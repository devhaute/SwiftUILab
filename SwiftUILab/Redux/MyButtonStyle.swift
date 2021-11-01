import SwiftUI

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 20))
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

