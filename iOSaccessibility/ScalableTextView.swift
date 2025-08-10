//
//  ScalableTextView.swift
//  iOSaccessibility
//
//  Created by Adishree Das on 8/10/25.
//

import SwiftUI

struct ScalableTextView: View {
    @State private var currentStep: Int = 0
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                //top navbar
                HStack{
                    Image(systemName: "textformat.size")
                    Text("Scalable Text")
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.pink)
                
                ScrollView {
                    if currentStep == 0 {
                        VStack(spacing: 30) {
                            Text("Scalable text is an important feature that can help make your application accessible to all. They also can make your application easier to use for people even if they do not have impaired vision.")
                                .font(.system(size: 25 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .padding(20)
                                .foregroundStyle(.pink)
                            
                            Text("Example:")
                                .font(.system(size: 20 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.black)
                            
                            TextSizeSliderView()
                                .padding(.horizontal, 5)
                            
                            
                            Text("Click through the arrows on the bottom left and bottom right to go through each step.")
                                .font(.system(size: 18 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .padding(20)
                                .foregroundStyle(.pink)
                            
                            Spacer()
                        }
                    }
                    
                    if currentStep == 1 {
                        VStack(spacing: 20) {
                            Text("Step 1. Create the TextSizeManager Class")
                                .font(.system(size: 30 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                            
                            Text("This is the central logic for your scalable text feature. It's an ObservableObject that holds the current text size multiplier and handles persistence.")
                                .font(.system(size: 20 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.black)
                            
                            Divider()
                            
                            Text("1. Create the TextSizeManager Class")
                                .font(.system(size: 20 * textSizeManager.textSizeMultiplier))
                                .foregroundStyle(.pink)
                                .multilineTextAlignment(.center)
                            
                            Text("2. Paste the following code into the file. This class uses UserDefaults for quick, local saving of the text size and SwiftData to save the setting to the user's profile for long-term, user-specific persistence.")
                                .padding(10)
                                .font(.system(size: 20 * textSizeManager.textSizeMultiplier))
                                .foregroundStyle(.pink)
                                .multilineTextAlignment(.center)
                            
                            // Code example
                            VStack(alignment: .leading, spacing: 8) {
                                Text("TextSizeManager.swift")
                                    .font(.system(size: 16 * textSizeManager.textSizeMultiplier))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.pink)
                                
                                Text("""
import SwiftUI
import Foundation

class TextSizeManager: ObservableObject {
    @Published var textSizeMultiplier: Double = 1.0
    
    private let userDefaultsKey = "TextSizeMultiplier"
    
    init() {
        // saves the preferred text size to user defaults to ensure persistence
        textSizeMultiplier = UserDefaults.standard.double(forKey: userDefaultsKey)

        // sets the default text size
        if textSizeMultiplier == 0.0 {
            textSizeMultiplier = 1.0
        }
    }
    
// updates text size and resets the multiplier and user defaults
    func updateTextSize(_ newSize: Double) {
        textSizeMultiplier = newSize
        UserDefaults.standard.set(newSize, forKey: userDefaultsKey)
    }
}
""")
                                .font(.system(size: 14 * textSizeManager.textSizeMultiplier))
                                .foregroundStyle(.black)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                            }
                            .padding()
                            
                            Spacer()
                        }
                    }
                    
                    if currentStep == 2 {
                        VStack(spacing: 20) {
                            Text("Step 2. Add TextSizeManager to Your App")
                                .font(.system(size: 30 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                            
                            Text("Inject the TextSizeManager as an environment object in your main app file so it's available throughout your app. You should already have an App file, just add the extra lines to it. ")
                                .font(.system(size: 20 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.black)
                            
                            Divider()
                            
                            // Code example
                            VStack(alignment: .leading, spacing: 8) {
                                Text("YourApp.swift")
                                    .font(.system(size: 16 * textSizeManager.textSizeMultiplier))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.pink)
                                
                                Text("""
import SwiftUI

@main
struct YourApp: App {
    // add this line to introduce the environment object
    @StateObject private var textSizeManager = TextSizeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                // and this line to add the environment object
                .environmentObject(textSizeManager)
        }
    }
}
""")
                                .font(.system(size: 14 * textSizeManager.textSizeMultiplier))
                                .foregroundStyle(.black)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                            }
                            .padding()
                            
                            Spacer()
                        }
                    }
                    
                    if currentStep == 3 {
                        VStack(spacing: 20) {
                            Text("Step 3. Create the Text Size Slider View")
                                .font(.system(size: 30 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                            
                            Text("Create a SwiftUI view that provides the interactive slider for users to adjust text size. You can customize this with different colors as you wish, but here is the exact code for this app!")
                                .font(.system(size: 20 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.black)
                            
                            Divider()
                            
                            // Code example
                            VStack(alignment: .leading, spacing: 8) {
                                Text("TextSizeSliderView.swift")
                                    .font(.system(size: 16 * textSizeManager.textSizeMultiplier))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.pink)
                                
                                Text("""
import SwiftUI 

struct TextSizeSliderView: View {
    // make sure to have this line to introduce the environment object
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Text Size")
                .font(.headline)
                .foregroundColor(.black)
            
            HStack {
                Text("A").font(.system(size: 12))
                    .foregroundColor(.black)
                

                // this slider is binded to the textSizeMultiplier, so changing the slider changes the value of the multiplier
                Slider(value: Binding(
                    get: { textSizeManager.textSizeMultiplier },
                    set: { textSizeManager.updateTextSize($0) }
                ), in: 0.5...2.0, step: 0.1)
                .accentColor(.pink)

                Text("A").font(.system(size: 24))
                    .foregroundColor(.black)
            }

            Text("\\(Int(textSizeManager.textSizeMultiplier * 100))%")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
""")
                                .font(.system(size: 14 * textSizeManager.textSizeMultiplier))
                                .foregroundStyle(.black)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                            }
                            .padding()
                            
                            Spacer()
                        }
                    }
                    
                    if currentStep == 4 {
                        VStack(spacing: 20) {
                            Text("Step 4. Apply Text Size Scaling")
                                .font(.system(size: 30 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                            
                            Text("Use the TextSizeManager in your views by accessing it as an environment object and multiplying your base font sizes. Do this by adding the multiplier to each font size.")
                                .font(.system(size: 20 * textSizeManager.textSizeMultiplier))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.black)
                            
                            Divider()
                            
                            // Code example
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Example Usage, your code will look different.")
                                    .font(.system(size: 16 * textSizeManager.textSizeMultiplier))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.pink)
                                
                                Text("""
struct YourContentView: View {
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                // instead of just writing size: 16, multiply this by the textSizeManager.textSizeMultiplier value
                .font(.system(size: 16 * textSizeManager.textSizeMultiplier))
            
            Text("This text will scale with the slider")
                .font(.system(size: 14 * textSizeManager.textSizeMultiplier))
        }
    }
}
""")
                                .font(.system(size: 14 * textSizeManager.textSizeMultiplier))
                                .foregroundStyle(.black)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                            }
                            .padding()
                            
                            Spacer()
                        }
                    }
                }
                
                // Navigation arrows
                HStack{
                    Button(action: {
                        if currentStep > 0 {
                            currentStep -= 1
                        }
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .disabled(currentStep == 0)
                    
                    Spacer()
                    
                    Text("\(currentStep + 1) of 5")
                        .font(.system(size: 18 * textSizeManager.textSizeMultiplier))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        if currentStep < 5 {
                            currentStep += 1
                        }
                    }) {
                        Image(systemName: "arrow.right")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .disabled(currentStep == 4)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.pink)
            }
            .background(Color(red: 255/255, green: 255/255, blue: 220/255))
        }
    }
}

#Preview {
    ScalableTextView()
        .environmentObject(TextSizeManager())
}
