//
//  ContentView.swift
//  iOSaccessibility
//
//  Created by Adishree Das on 8/10/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var textSizeManager: TextSizeManager
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                //heading
                VStack {
                    Image(systemName: "cursorarrow")
                        .font(.system(size: 75))
                        .foregroundStyle(.pink)
                    Text("iOS Accessibility Tools")
                        .font(.system(size: 30 * textSizeManager.textSizeMultiplier))
                        .foregroundStyle(.pink)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    Text("Tools for developers to learn how to make their apps accessible to all users.")
                        .font(.system(size: 16 * textSizeManager.textSizeMultiplier))
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.center)
                }
                .padding()
                
                //tutorials
                NavigationLink(destination: ScalableTextView()) {
                    HStack {
                        Image(systemName: "textformat.size")
                        Text("Scalable Text")
                    }
                    .font(.system(size: 18 * textSizeManager.textSizeMultiplier))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 255/255, green: 220/255, blue: 230/255))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .foregroundColor(.pink)
                }
                Spacer()
            }
            .padding()
            .background(Color(red: 255/255, green: 255/255, blue: 220/255))
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(TextSizeManager())
}
