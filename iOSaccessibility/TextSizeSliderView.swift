import SwiftUI

struct TextSizeSliderView: View {
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Text Size")
                .font(.headline)
                .foregroundColor(.primary)
            
            HStack {
                Text("A")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                
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
                    .foregroundColor(.secondary)
            }
            
            Text("\(Int(textSizeManager.textSizeMultiplier * 100))%")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
