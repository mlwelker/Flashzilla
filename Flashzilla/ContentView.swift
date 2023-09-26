
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Success")
                .onTapGesture(perform: simpleSuccess)
                .padding()
            Text("Warning")
                .onTapGesture(perform: simpleWarning)
                .padding()
            Text("Error")
                .onTapGesture(perform: simpleError)
                .padding()
        }
    }
    
    func simpleSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    func simpleWarning() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
    
    func simpleError() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
}

#Preview {
    ContentView()
}
