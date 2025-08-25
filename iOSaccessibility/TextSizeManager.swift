import SwiftUI
import Foundation

class TextSizeManager: ObservableObject {
    @Published var textSizeMultiplier: Double = 1.0
    
    private let userDefaultsKey = "TextSizeMultiplier"
    
    init() {
        textSizeMultiplier = UserDefaults.standard.double(forKey: userDefaultsKey)
        
        if textSizeMultiplier == 0.0 {
            textSizeMultiplier = 1.0
        }
    }
    
    func updateTextSize(_ newSize: Double) {
        textSizeMultiplier = newSize
        UserDefaults.standard.set(newSize, forKey: userDefaultsKey)
    }
}
