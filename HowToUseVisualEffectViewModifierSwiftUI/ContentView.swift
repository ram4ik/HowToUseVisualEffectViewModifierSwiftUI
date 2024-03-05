//
//  ContentView.swift
//  HowToUseVisualEffectViewModifierSwiftUI
//
//  Created by test on 05.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader(content: { geometry in
            Text("Visual Effect")
                .padding()
                .background(.red)
                .grayscale(0)
        })
        .background(Color.green)
        .frame(width: 200)
        .padding()
    }
}

#Preview {
    ContentView()
}
