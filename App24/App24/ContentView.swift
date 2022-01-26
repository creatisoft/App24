//
//  ContentView.swift
//  App24
//
//  Created by Christopher on 1/26/22.
//  https://www.creatisoft.com

import SwiftUI

struct ContentView: View {
    
    @State var someText = ""
    @State var yourAge = 0.0;
    
    var body: some View {
    
        VStack {

            Text("Dog Age Calculator")
                .padding(.all)
            TextField("Enter your age", text: $someText )
                .padding(.all)
            Button(action: ageCalculator) {
                Text("Calculate")
            }
            .padding(.all)
            
            Text(String(yourAge))
                .padding(.all)
            
        }.frame(width: 350, height: 250, alignment: .center)

    }

    func ageCalculator(){
        
        yourAge = Double((15.0 / Float(someText)!))


    }
        
      
}


struct ContentView_Previews:
    
    PreviewProvider {
    
    static var previews: some View {
    
        ContentView()
    
    }
    
}
