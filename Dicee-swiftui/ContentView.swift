//
//  ContentView.swift
//  Dicee-swiftui
//
//  Created by Jorge Aluizio on 21/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceeView(n: 1)
                    DiceeView(n: 1)
                }.padding(.horizontal)
                Spacer()
                Button("Roll") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.horizontal)
            }
        }
    }
}

struct DiceeView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
