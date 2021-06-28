//
//  ContentView.swift
//  SlottyTokens
//
//  Created by ∞                                                ζ ( s ) =        ∑n (⅟n^s),    n=1 on 6/27/21.
//

import SwiftUI

struct ContentView: View {
    @State var cred = 100
    @State var sl1 = 1
    @State var sl2 = 1
    @State var sl3 = 1
    
    var body: some View {
        VStack {
            Text("Slotty!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
                .padding(.vertical)
            Text("credits : " + String(cred))
                .padding(.vertical)
            HStack(spacing: -20.0) {
                Image("fruit\(sl1)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(sl2)").resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(sl3)").resizable().aspectRatio(contentMode: .fit)
            }
            Button(action: {
                sl1 = Int.random(in: 1...3)
                sl2 = Int.random(in: 1...3)
                sl3 = Int.random(in: 1...3)
                if (sl1 == sl2 && sl2 == sl3) {
                    cred += 15
                } else {
                    cred -= 1
                }
            }, label : {
                HStack {
                    Text("    SPIN    ").foregroundColor(Color.white).padding(.all).background(Color.pink).cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
