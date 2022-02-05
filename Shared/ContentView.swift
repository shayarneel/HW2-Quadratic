//
//  ContentView.swift
//  Shared
//
//  Created by Shayarneel Kundu on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var quadraticEquation = QuadraticEquation()
    
    @State var a = ""
    @State var b = ""
    @State var c = ""
    @State var xposString = ""
    @State var xnegString = ""
    @State var xpposString = ""
    @State var xpnegString = ""

    
    var body: some View {
        
            
            VStack{
                // This VStack lists the input parameters
                
                HStack{
                    
                    Text("a value:")
                    TextField("Must be non-zero", text: $a)
                    
                }.padding()
                
                HStack{
                    
                    Text("b value:")
                    TextField("Can be anything", text: $b)
                    
                }.padding()
                
                
                HStack{
                    
                    Text("c value:")
                    TextField("Must be non-zero", text: $c)
                    
                }.padding()
                
                HStack{
                    
                    Text("regular positive root:")
                    TextField("", text: $xposString)
                    
                }.padding()
                
                HStack{
                    
                    Text("regular negative root:")
                    TextField("", text: $xnegString)
                    
                }.padding()
                
                HStack{
                    
                    Text("weird positive root:")
                    TextField("", text: $xpposString)
                    
                }.padding()
                
                HStack{
                    
                    Text("weird negative root:")
                    TextField("", text: $xpnegString)
                    
                }.padding()
                    
                }
                
                Button("Calculate Roots", action: {self.QuadraticRoots()} )

                
            }
            
    func QuadraticRoots() {
        
        
        
        let aDouble = Double(a)!
        let bDouble = Double(b)!
        let cDouble = Double(c)!
        
        let xRegRoot = quadraticEquation.CalculateUsualQuadratic(avalcalc: aDouble, bvalcalc: bDouble, cvalcalc: cDouble)
        let xWeirdRoot = quadraticEquation.CalculateUsualQuadratic(avalcalc: aDouble, bvalcalc: bDouble, cvalcalc: cDouble)
        
        
        
        let xRegPosRoot = xRegRoot.0
        let xRegNegRoot = xRegRoot.1
        
        let xWeirdPosRoot = xWeirdRoot.0
        let xWeirdNegRoot = xWeirdRoot.1
        
        xposString = String(xRegPosRoot)
        xnegString = String(xRegNegRoot)
        
        xpposString = String(xWeirdPosRoot)
        xpnegString = String(xWeirdNegRoot)
    }

        
}
    
   


