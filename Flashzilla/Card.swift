
import Foundation

struct Card: Codable {
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th doctor in Doctor Who?", answer: "Jodie Whittaker")
}
