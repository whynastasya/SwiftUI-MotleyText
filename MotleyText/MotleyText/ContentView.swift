//
//  ContentView.swift
//  MotleyText
//
//  Created by nastasya on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var containerWidth: CGFloat = 300
    
    var body: some View {
        VStack {
            Group {
                Text("🏁 Новое задание")
                    .font(.title)
                
                + Text(" «Разношёрстный Текст» ")
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.pink.opacity(0.7), .purple],
                            startPoint: .topLeading,
                            endPoint: .topTrailing))
                    .font(.title2)
                
                + Text(" Сдать до 4 Октября 21:00 ")
                    .font(.callout)
                    .foregroundStyle(.gray)
            }
            .frame(width: containerWidth, height: 400)
            .border(Color.purple, width: 2)
            
            Slider(value: $containerWidth, in: 100 ... 300)
                .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
