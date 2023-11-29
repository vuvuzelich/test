//
//  ContentView.swift
//  firstApp
//
//  Created by Макс Лахман on 29.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView()
        }
        .padding()
    }
}


struct CardView: View {
    @State var isFaceUp : Bool = false
    
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20).strokeBorder(lineWidth: 2)
                Text("🖥️").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20).fill(Color(.orange))
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
