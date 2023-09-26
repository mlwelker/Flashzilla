
import SwiftUI

struct ContentView: View {
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .onTapGesture {
                    print("Text tapped.")
                }
        }
        .simultaneousGesture(
            TapGesture()
                .onEnded {
                    print("VStack tapped.")
                }
            )
    }
}

#Preview {
    ContentView()
}
