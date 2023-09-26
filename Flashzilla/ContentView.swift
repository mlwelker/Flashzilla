
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .onLongPressGesture(minimumDuration: 0.5) {
                    print("Long press.")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)")
                }
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
