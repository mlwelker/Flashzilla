
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 300, height: 300)
                .onTapGesture {
                    print("Rectangle tapped")
                }
            
            Circle()
                .fill(.orange)
                .frame(width: 300, height: 300)
                .contentShape(Rectangle()) // causes Rectangle area to be tap-able
                .onTapGesture {
                    print("Circle tapped")
                }
                .allowsHitTesting(false) // causes Circle to no longer catch tapping
        }
    }
}

#Preview {
    ContentView()
}
