//
//  ContentView.swift
//  flippd
//
//  Created by Vikas Yadav on 05/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View  {
    @State var isFaceUp: Bool
    
    var body : some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }.onTapGesture() {
            isFaceUp.toggle()
            print("Tapped")
        }
    }
}




#Preview {
    ContentView()
}
