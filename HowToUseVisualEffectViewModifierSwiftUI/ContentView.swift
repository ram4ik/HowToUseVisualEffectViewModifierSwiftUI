//
//  ContentView.swift
//  HowToUseVisualEffectViewModifierSwiftUI
//
//  Created by test on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSpacer: Bool = false
    
    var body: some View {
        VStack {
            Text("Visual Effect")
                .padding()
                .background(.red)
                .visualEffect { content, geometry in
                    content
                        .grayscale(geometry.frame(in: .global).minY < 300 ? 1 : 0)
                }
            
            if showSpacer {
                Spacer()
            }
        }
        .animation(.easeIn, value: showSpacer)
        .onTapGesture {
            showSpacer.toggle()
        }
    }
}

#Preview {
    ContentView()
}
