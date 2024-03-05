//
//  ContentView.swift
//  HowToUseVisualEffectViewModifierSwiftUI
//
//  Created by test on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Visual Effect")
            .padding()
            .background(.red)
            .visualEffect { content, geometry in
                content
                    .grayscale(geometry.size.width >= 200 ? 1 : 0)
            }
    }
}

#Preview {
    ContentView()
}
