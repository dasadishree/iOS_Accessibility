import SwiftUI

struct TextSizeSliderView: View {
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Text Size")
                .font(.headline)
                .foregroundColor(.pink)
            
            HStack {
                Text("A")
                    .font(.system(size: 12))
                    .foregroundColor(.pink)
                
                Slider(
                    value: Binding(
                        get: { textSizeManager.textSizeMultiplier },
                        set: { textSizeManager.updateTextSize($0) }
                    ),
                    in: 0.5...2.0,
                    step: 0.1
                )
                .accentColor(.pink)
                
                Text("A")
                    .font(.system(size: 24))
                    .foregroundColor(.pink)
            }
            
            Text("\(Int(textSizeManager.textSizeMultiplier * 100))%")
                .font(.caption)
                .foregroundColor(.pink)
        }
        .padding()
        .background(Color(red: 255/255, green: 220/255, blue: 230/255))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
