//
//  ContentView.swift
//  SwiftApp
//
//  Created by Kamil Zachara on 31/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard="card5";
    @State var cpuCard="card9";
    @State var playerScore=0;
    @State var cpuScore=0;
    
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                HStack {
                    Button {
                        //updateCards
                        playerCard="card11"
                        cpuCard="card3"
                        
                        
                        //update score
                    } label: {
                        Image("dealbutton")
                    }
                    
                    
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        
    }
}
