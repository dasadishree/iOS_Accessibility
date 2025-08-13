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
                    VStack(spacing: 30) {
                        Text("Scalable text is an important feature that can help make your application accessible to all. There are 2 integration approaches: native vs embedded, both with their own pros and cons.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                            .padding(10)
                            .foregroundStyle(.pink)
                        
                        //native section
                        VStack {
                            Text("NATIVE SCALABLE TEXT: ")
                                .font(.title2)
                                .foregroundStyle(.pink)
                                .bold()
                                .padding(.top, 20)
                            Text("The native approach to creating accessible and scalable text within your app is very easy to integrate, and takes negligible time as you are creating your application. However, it allows for less user control of what size they want for certain applications, and users may not know they can change text size.")
                                .padding(.horizontal, 20)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                                .font(.body)
                            
                            NavigationLink(destination: NativeScalableText()) {
                                HStack {
                                    Image(systemName: "textformat.size")
                                    Text("Tutorial")
                                }
                                .font(.title2)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.pink)
                                .cornerRadius(10)
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
                                .padding(.bottom, 10)
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color(red: 255/255, green: 220/255, blue: 230/255))
                        )
                        .padding(.horizontal, 20)

                        
                        //embedded section
                        VStack {
                            Text("EMBEDDED SCALABLE TEXT: ")
                                .font(.title2)
                                .foregroundStyle(.pink)
                                .bold()
                                .padding(.top, 20)
                            Text("Embedded text sliders are more difficult and time consuming to integrate, and they may be unneccasary because of Apple's easier accessibility features. However, it may be worth it to have a text slider within the app's settings itself to give users more control rather than making them go to their device settings. Takes about 30 min - 1 hour to build.")
                                .padding(.horizontal, 20)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.pink)
                                .font(.body)
                            
                            NavigationLink(destination: EmbeddedScalableText()) {
                                HStack {
                                    Image(systemName: "textformat.size")
                                    Text("Example & Tutorial")
                                }
                                .font(.title2)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.pink)
                                .cornerRadius(10)
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
                                .padding(.bottom, 10)

                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color(red: 255/255, green: 220/255, blue: 230/255))
                        )
                        .padding(.horizontal, 20)
                    }
                }
            }
            .background(Color(red: 255/255, green: 255/255, blue: 220/255))
        }
    }
}

#Preview {
    ScalableTextView()
        .environmentObject(TextSizeManager())
}
