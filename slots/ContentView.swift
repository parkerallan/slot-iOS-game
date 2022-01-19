//
//  ContentView.swift
//  slots
//
//  Created by Parker Allan on 1/19/22.
//

import SwiftUI
struct ContentView: View {
    
    @State var credits = 1000
    @State var spot1 = "starter1"
    @State var spot2 = "starter2"
    @State var spot3 = "starter3"
    @State var spot4 = "starter1"
    @State var spot5 = "starter2"
    @State var spot6 = "starter3"
    @State var spot7 = "starter1"
    @State var spot8 = "starter2"
    @State var spot9 = "starter3"
    //@State var disabled = true
    
    var body: some View {
        VStack {
            Spacer()
            Text("Lucky 7 Slots!")
                .padding()
                .font(.largeTitle)
            Spacer()
            HStack{
                Image(spot1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
                Image(spot2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
                Image(spot3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
            }
            HStack{
                Image(spot4)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
                Image(spot5)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
                Image(spot6)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
            }
            HStack{
                Image(spot7)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
                Image(spot8)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
                Image(spot9)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(4.0)
            }
            Text("Credits: " + String(credits))
            Spacer()
            Button(action: {
                //subtract credits on spin
                credits -= 100
                
                //randomize spin
                let slotRand1 = Int.random(in: 1...3)
                let slotRand2 = Int.random(in: 1...3)
                let slotRand3 = Int.random(in: 1...3)
                let slotRand4 = Int.random(in: 1...3)
                let slotRand5 = Int.random(in: 1...3)
                let slotRand6 = Int.random(in: 1...3)
                let slotRand7 = Int.random(in: 1...3)
                let slotRand8 = Int.random(in: 1...3)
                let slotRand9 = Int.random(in: 1...3)
                
                spot1 = "symbol" + String(slotRand1)
                spot2 = "symbol" + String(slotRand2)
                spot3 = "symbol" + String(slotRand3)
                spot4 = "symbol" + String(slotRand4)
                spot5 = "symbol" + String(slotRand5)
                spot6 = "symbol" + String(slotRand6)
                spot7 = "symbol" + String(slotRand7)
                spot8 = "symbol" + String(slotRand8)
                spot9 = "symbol" + String(slotRand9)

                
                //slot win horizontal
                if spot1 == spot2 && spot2 == spot3 {
                    credits += 100
                }
                if spot4 == spot5 && spot5 == spot6 {
                    credits += 100
                }
                if spot7 == spot8 && spot8 == spot9 {
                    credits += 100
                }
                
                //slot win vertical
                if spot1 == spot4 && spot4 == spot7 {
                    credits += 100
                }
                if spot2 == spot5 && spot5 == spot8 {
                    credits += 100
                }
                if spot3 == spot6 && spot6 == spot9 {
                    credits += 100
                }
                
                //slot win diagonal
                if spot1 == spot5 && spot5 == spot9 {
                    credits += 100
                }
                if spot3 == spot5 && spot7 == spot9 {
                    credits += 100
                }
                
                //out of credits
                /*if credits <= 0 {
                        .disabled(disabled)
                }*/
                
            }) {
                Text("Spin")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue.cornerRadius(10))
                    //.disabled(true)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
