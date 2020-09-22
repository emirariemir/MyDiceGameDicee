//
//  ContentView.swift
//  MyDiceGameDicee
//
//  Created by Emir on 22.09.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("diceeLogo").padding(.vertical)
                
                Spacer()
                
                HStack {
                    DiceView()
                    DiceView()
                }.padding(.horizontal)
                
                Spacer()
                
                ButtonView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    var body: some View {
        Image("dice1")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.horizontal)
    }
}

struct ButtonView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Roll")
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal)
        }).background(Color.red)
    }
}
