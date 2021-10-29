import SwiftUI

struct ScrollReader: View {
    @Namespace var topID
    @Namespace var bottomID
    
    @State private var selectedIndex = 0
    
    var selectedBG: (Int, Int) -> Color = { currentItemIndex, selectedItemIndex in
        currentItemIndex == selectedItemIndex ? Color.green : Color.yellow
    }
    
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView(.vertical, showsIndicators: false) {
                    Button("Scroll to Bottom") {
                        withAnimation {
                            proxy.scrollTo(bottomID)
                        }
                    }
                    .id(topID)
                    
                    ForEach(0...100, id: \.self) { index in
                        Text("번호: \(index)")
                            .padding(50)
                            .background(selectedBG(index, selectedIndex))
                            .id(index)
                    }
                    .onChange(of: selectedIndex) { changedIndex in
                        withAnimation {
                            proxy.scrollTo(changedIndex, anchor: .center)
                        }
                    }
                    
                    Button("Scroll to Top") {
                        withAnimation {
                            proxy.scrollTo(topID)
                        }
                    }
                    .id(bottomID)
                }
            }
            
            HStack {
                Button {
                    selectedIndex = 10
                } label: {
                    Text("인덱스: 10")
                        .padding()
                }
                
                Button {
                    selectedIndex = 50
                } label: {
                    Text("인덱스: 50")
                        .padding()
                }
                
                Button {
                    selectedIndex = 80
                } label: {
                    Text("인덱스:80")
                        .padding()
                }
            }
        }
    }
}

struct ScrollReader_Previews: PreviewProvider {
    static var previews: some View {
        ScrollReader()
    }
}
