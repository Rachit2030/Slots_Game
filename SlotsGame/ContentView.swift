//
//  ContentView.swift
//  SlotsGame
//
//  Created by Rachit on 11/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var credit = 100
    @State private var img1 = 1
    @State private var img2 = 1
    @State private var img3 = 1
    var body: some View {
        VStack{
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            
            Text("Credits: " + String(credit))
                .font(.title2)
            Spacer()
            
            HStack{
                Image("fruit\(img1)" )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(img2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(img3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            
            Button(action: {
                img1 = Int.random(in: 1...3)
                img2 = Int.random(in: 1...3)
                img3 = Int.random(in: 1...3)
                if img1 == img2 && img2 == img3 && img1 == img3{
                    credit += 50
                }
                else{
                    credit -= 10
                }
            }, label: {
                Text("Spin")
            })
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
