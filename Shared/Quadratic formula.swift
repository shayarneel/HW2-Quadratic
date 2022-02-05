//
//  Quadratic formula.swift
//  HW 2
//
//  Created by Shayarneel Kundu on 1/28/22.
//

import SwiftUI

class QuadraticEquation:NSObject, ObservableObject {
    
    ///Declaring the a, b, and c coefficients that determine the quadratic equation
    ///ax^{2} + bx + c = 0
    
    var aval = 1.0                 //must be non-zero
    var bval = 1.0
    var cval = 1.0                 //must be non-zero for weird root to work
    @Published var xpos = 0.0      //positive square-root, usual formula
    @Published var xneg = 0.0      //negative square-root, usual formula
    @Published var xppos = 0.0     //positive square-root, weird formula
    @Published var xpneg = 0.0     //negative square-root, weird formula
    @Published var EnableButton = true
    
    

    func CalculateUsualQuadratic(avalcalc: Double, bvalcalc: Double, cvalcalc: Double) -> (Double,Double) {
        
        ///Function that computes the usual roots of a qudratic
        ///
        ///  xpos = \frac{-b + \sqrt{b^{2}-4ac}}{2a}
        ///  xneg = \frac{-b - \sqrt{b^{2}-4ac}}{2a}
        
        let discriminant = pow(bvalcalc,2) - (4.0 * avalcalc * cvalcalc)
        
        if (discriminant<0){
            print("Imaginary roots")
            
            return(0.0,0.0)
            }
        
        else{
            let xposval = (-bvalcalc + pow(discriminant,0.5))/(2.0 * avalcalc)
            let xnegval = (-bvalcalc - pow(discriminant,0.5))/(2.0 * avalcalc)
            
            return (xposval, xnegval)
        }
       

    }
    
    
    
    
    
    func CalculateWeirdQuadratic(avalcalc: Double, bvalcalc: Double, cvalcalc: Double) -> (Double,Double) {
        
        ///Function that computes the usual roots of a qudratic
        ///
        ///  xppos = \frac{-2c}{b + \sqrt{b^{2}-4ac}}{2a}
        ///  xpneg = \frac{-2c}{b - \sqrt{b^{2}-4ac}}{2a}
        
        let discriminant = pow(bvalcalc,2) - (4.0 * avalcalc * cvalcalc)
        
        if (discriminant<0){
            print("Imaginary roots")
            
            return(0.0,0.0)
            }
        
        else{
            let denominatorpos = bvalcalc + pow(discriminant,0.5)
            let denominatorneg = bvalcalc - pow(discriminant,0.5)
            let xpposval = (-2 * cvalcalc)/denominatorpos
            let xpnegval = (-2 * cvalcalc)/denominatorneg
            
            return (xpposval, xpnegval)
        }
        

    }


    
    
    
    

















}
