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
                        .font(.largeTitle)
                        .foregroundStyle(.pink)
                    Text("iOS Accessibility Tools")
                        .font(.largeTitle)
                        .foregroundStyle(.pink)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                    Text("Tools for developers to learn how to make their apps accessible to all users.")
                        .font(.body)
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
                    .font(.title2)
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
