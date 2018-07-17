//
//  Fraction.swift
//  prog2.1
//
//  Created by James Strathern on 7/18/18.
//  Copyright © 2018 James Strathern. All rights reserved.
//

import Foundation

class Fraction{
    
    // STORED PROPERTIES
    
    var num: Int    //Numerator
    var den: Int    //Denominator
    
    // COMPUTED PROPERTIES
    
    var decimal: Float{
        get {
            return Float(self.num)/Float(self.den)
        }
    }
    
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    
    // INITIALIZERS
    
    /**
        Designated initializer
 
        Numerator and denominator values are passed in the arg
 
        - parameter num: Fraction's numerator
        - parameter den: Fraction's denominator
    */
    init(num : Int, den : Int) {
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
    }
    
    /**
        Convenience initialiser
     
        Numerator is set to some value, denominator
        is set to 1.
     
        - parameter num: Fraction's numerator
     */
    convenience init(num : Int) {
        self.init(num: num, den: 1);
    }
    
    /**
     Default initializer
     
     Numerator is set to 0 and denominator is set to 1
     */
    convenience init() {
        self.init(num: 0, den: 1)
    }
}
