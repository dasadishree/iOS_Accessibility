//
//  NativeScalableText.swift
//  iOSaccessibility
//
//  Created by Adishree Das on 8/13/25.
//
import SwiftUI

struct NativeScalableText: View {
    @State private var currentStep: Int = 0
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                //top navbar
                HStack{
                    Image(systemName: "textformat.size")
                    Text("Scalable Text: Native")
                        .multilineTextAlignment(.center)
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.pink)
                
                ScrollView {
                    if currentStep == 0 {
                        VStack(spacing: 30) {
                            Text("SwiftUI & Apple's native accessibility feature allows your application's users to be able to go to their device's settings app and change the text size for all applications. Here's how this can be done in less than a minute!")
                                .font(.title2)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                                .padding(.horizontal, 10)
                            
                            Text("Click through the arrows on the bottom left and bottom right to go through each step.")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 20)
                                .foregroundStyle(.pink)
                            
                            Spacer()
                        }
                    }
                    
                    if currentStep == 1 {
                        VStack(spacing: 20) {
                            Text("1. Use SwiftUI's standard font styles.")
                                .font(.title2)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                                .bold()
                            
                            Text("Your app's text will automatically scale with the user's system settings without extra effort or code needed - in one single line. See the next step for all possible SwiftUI styles and examples of them being used.")
                                .font(.title3)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                            
                            // Code example
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Example Usage, your code will look different")
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.pink)
                                
                                Text("""
struct YourContentView: View {
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                // instead of just writing any numerical text size like "size: 16", write a SwiftUI font style like .title or .body
                .font(.body)
        }
    }
}
""")
                                .font(.caption)
                                .foregroundStyle(.pink)
                                .padding()
                                .background(Color(red: 255/255, green: 220/255, blue: 230/255))
                                .cornerRadius(8)
                            }
                            .padding()
                            
                            Spacer()
                        }
                    }
                    
                    if currentStep == 2 {
                        VStack(spacing: 20) {
                            Text("2. SwiftUI standard font style examples:")
                                .font(.title2)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                                .bold()
                            
                            Divider()
                            Text(".font(.largeTitle)")
                                .font(.largeTitle)
                                .foregroundStyle(.pink)
                            Text(".font(.title)")
                                .font(.title)
                                .foregroundStyle(.pink)
                            Text(".font(.title2)")
                                .font(.title2)
                                .foregroundStyle(.pink)
                            Text(".font(.title3)")
                                .font(.title3)
                                .foregroundStyle(.pink)
                            Text(".font(.headline)")
                                .font(.headline)
                                .foregroundStyle(.pink)
                            Text(".font(.subheadling)")
                                .font(.subheadline)
                                .foregroundStyle(.pink)
                            Text(".font(.body)")
                                .font(.body)
                                .foregroundStyle(.pink)
                            Text(".font(.callout)")
                                .font(.callout)
                                .foregroundStyle(.pink)
                            Text(".font(.footnote)")
                                .font(.footnote)
                                .foregroundStyle(.pink)
                            Text(".font(.caption)")
                                .font(.caption)
                                .foregroundStyle(.pink)
                            Text(".font(.caption2)")
                                .font(.caption)
                                .foregroundStyle(.pink)
                        }
                    }
                    
                   
                }
                
                // nav arrows
                HStack{
                    Button(action: {
                        if currentStep > 0 {
                            currentStep -= 1
                        }
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.largeTitle)
                            .foregroundStyle(currentStep==0 ? .pink : .white)
                    }
                    .disabled(currentStep == 0)
                    
                    Spacer()
                    
                    Text("\(currentStep + 1) of 3")
                        .font(.system(size: 18 * textSizeManager.textSizeMultiplier))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        if currentStep < 2 {
                            currentStep += 1
                        }
                    }) {
                        Image(systemName: "arrow.right")
                            .font(.largeTitle)
                            .foregroundStyle(currentStep == 2 ? .pink : .white)
                    }
                    .disabled(currentStep == 2)
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
    NativeScalableText()
        .environmentObject(TextSizeManager())
}
