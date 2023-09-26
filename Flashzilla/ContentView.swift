
import SwiftUI

struct ContentView: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale = 1.0
    
    var body: some View {
        Text("Hello, world")
            .scaleEffect(scale)
            .onTapGesture {
                if reduceMotion {
                    scale *= 1.2
                } else {
                    withAnimation {
                        scale *= 1.2
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}
