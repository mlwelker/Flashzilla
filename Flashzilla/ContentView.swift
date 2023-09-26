
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onTapGesture(count: 2) {
                    print("Double-tap.")
                }
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
