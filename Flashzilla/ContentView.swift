
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("world")
        }
        .contentShape(Rectangle()) // makes entire VStack tap-able, incl. Spacer blank area
        .onTapGesture {
            print("VStack tapped")
        }
    }
}

#Preview {
    ContentView()
}
