//
//  ContentView.swift
//  card-Challenge
//
//  Created by ∞   ζ ( s ) =    ∑n (⅟n^s),    n=1 on 6/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var scoreKeep = ""
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var money = 1000
    
    var body: some View {
        ZStack {
            Color.purple
                            .ignoresSafeArea()
            VStack {
                Text(scoreKeep)
                    .foregroundColor(Color.white)
                    .padding(.top)
                Image("logo")
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                Text("$ USD : " + String(money))
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                Spacer()
                VStack {
                    HStack(spacing : 5.0) {
                        Image(playerCard)
                        Image(cpuCard)
                        
                    }
                }


                Button(action: {
                    
                    // generate random
                    let rand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(rand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update Score and money
                    if rand > cpuRand {
                        playerScore += 1
                        money += 10
                        scoreKeep = "+ $" + String(money)
                    } else if cpuRand > rand {
                        cpuScore += 1
                        money = money - 5
                        scoreKeep = " $" + String(money)
                    }
                }, label: {
                    
                    HStack {
                        
                        Image("dealbutton")
                            .padding(.all)
                            .background(Color.white)
                            .cornerRadius(10)
                            
                    }
                    .padding(.all)
                })
                HStack(spacing : 100.0) {
                    VStack {
                      Text("Player")
                        .font(.title)
                        .foregroundColor(Color.white)
                      Text(String(playerScore))
                        .font(.title)
                        .foregroundColor(Color.white)
                    }
                    VStack {
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
