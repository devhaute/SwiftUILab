import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Label {
                Text("사용자 레이블 스타일 설정 지정 (2)")
            } icon: {
                Image(systemName: "paperplane.circle.fill")
            }
            .labelStyle(YellowBackgroundLabelStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct YellowBackgroundLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
                .foregroundColor(.blue)
            configuration.title
//                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(20)
    }
}
