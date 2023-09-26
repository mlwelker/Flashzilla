
import SwiftUI

func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct ContentView: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale = 1.0
    
    var body: some View {
        Text("Hello, world")
            .scaleEffect(scale)
            .onTapGesture {
                withOptionalAnimation {
                    scale *= 1.2
                }
            }
    }
}

#Preview {
    ContentView()
}
